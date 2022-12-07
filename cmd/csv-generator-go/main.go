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
	"unicode/utf8"

	"github.com/Vitality-South/magfabrics-api/pkg/client"
	"github.com/gocarina/gocsv"
)

func main() {
	delim := ','

	flag.Func("d", "csv `delimiter`", func(s string) error {
		if utf8.RuneCountInString(s) != 1 {
			return errors.New("delimiter must be a single character (rune)")
		}

		runes := []rune(s)

		delim = runes[0]

		return nil
	})

	key := flag.String("apikey", "", "`API Key`")

	flag.Parse()

	c, cerr := client.NewClient(*key)

	if cerr != nil {
		panic(fmt.Sprintf("error creating API client: %v", cerr))
	}

	defer c.Close()

	ctx := context.Background()

	fabrics, ferr := c.GetAllFabrics(ctx)

	if ferr != nil {
		panic(fmt.Sprintf("error getting all fabrics: %v", ferr))
	}

	gocsv.SetCSVWriter(func(out io.Writer) *gocsv.SafeCSVWriter {
		writer := csv.NewWriter(out)
		writer.Comma = delim
		return gocsv.NewSafeCSVWriter(writer)
	})

	s, serr := gocsv.MarshalString(&fabrics)

	if serr != nil {
		panic(fmt.Sprintf("error converting to csv: %v", serr))
	}

	fmt.Print(s)
}
