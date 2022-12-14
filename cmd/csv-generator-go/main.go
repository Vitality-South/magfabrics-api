// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"context"
	"encoding/csv"
	"errors"
	"flag"
	"fmt"
	"io"
	"log"
	"os"
	"unicode/utf8"

	"github.com/Vitality-South/magfabrics-api/pkg/client"
	"github.com/Vitality-South/magfabrics-api/pkg/fabric"
	"github.com/gocarina/gocsv"
)

const (
	// default delimiter in CSV output
	defaultCSVDelimiter = ','

	// the value that designates a fabric as discontinued in the Status field
	fabricDiscontinuedStatus = "X"
)

// filter returns a slice that contains only the elements of the provided slice
// "ss" that return true with the given test function
func filter[T any](ss []T, test func(T) bool) []T {
	var ret []T

	for _, s := range ss {
		if test(s) {
			ret = append(ret, s)
		}
	}

	return ret
}

// isNotDiscontinued returns true if the fabric is not discontinued
func isNotDiscontinued(f *fabric.Fabric) bool {
	return f.Status != fabricDiscontinuedStatus
}

func main() {
	// set CSV delimiter to use in CSV output
	delim := defaultCSVDelimiter

	flag.Func("d", "csv `delimiter` (default is comma)", func(s string) error {
		if utf8.RuneCountInString(s) != 1 {
			return errors.New("delimiter must be a single character (rune)")
		}

		runes := []rune(s)

		delim = runes[0]

		return nil
	})

	// set API Key for the MagFabrics API
	apiKey := flag.String("apikey", "", "API `key` for MagFabrics API (required)")

	ignoreDiscontinued := flag.Bool("ignorediscontinued", false, "ignore discontinued fabrics (default is false)")

	flag.Parse()

	// setup API client
	if *apiKey == "" {
		log.Print("API key must not be empty\n\n")

		flag.Usage()

		os.Exit(1)
	}

	c, cerr := client.NewClient(*apiKey)

	if cerr != nil {
		log.Fatalf("error creating API client: %v", cerr)
	}

	ctx := context.Background()

	// get all fabrics with inventory
	allFabrics, ferr := c.GetAllFabrics(ctx)

	if ferr != nil {
		c.Close()

		log.Fatalf("error getting all fabrics from API: %v", ferr)
	}

	c.Close()

	// filter fabrics if requested
	fabrics := func() []*fabric.Fabric {
		filtered := allFabrics

		if *ignoreDiscontinued {
			filtered = filter(filtered, isNotDiscontinued)
		}

		return filtered
	}()

	// convert fabrics data structure to CSV string
	gocsv.SetCSVWriter(func(out io.Writer) *gocsv.SafeCSVWriter {
		writer := csv.NewWriter(out)
		writer.Comma = delim
		return gocsv.NewSafeCSVWriter(writer)
	})

	s, serr := gocsv.MarshalString(&fabrics)

	if serr != nil {
		log.Fatalf("error converting to csv: %v", serr)
	}

	// print CSV string to standard output
	fmt.Print(s)
}
