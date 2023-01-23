package main

import (
	"context"
	"encoding/csv"
	"flag"
	"fmt"
	"io"
	"log"
	"os"

	"github.com/Vitality-South/magfabrics-api/pkg/client"
	"github.com/gocarina/gocsv"
)

const (
	// version number
	version = 1
)

func main() {
	// set API Key for the MagFabrics API
	apiKey := flag.String("apikey", "", "API `key` for MagFabrics API (required)")

	printVersion := flag.Bool("version", false, "print version number and exit")

	flag.Parse()

	// print version and exit if version flag was supplied
	if *printVersion {
		fmt.Fprintf(os.Stderr, "%d\n", version)

		os.Exit(1)
	}

	// apikey cannot be empty otherwise end program
	if *apiKey == "" {
		log.Print("API key must not be empty\n\n")

		flag.Usage()

		os.Exit(1)
	}

	ctx := context.Background()

	c, cerr := client.NewClient(*apiKey)

	if cerr != nil {
		log.Fatalf("error creating API client: %v", cerr)
	}

	df, dferr := c.GetDiscontinuedFabrics(ctx)

	if dferr != nil {
		c.Close()

		panic(dferr)
	}

	c.Close()

	// convert discontinued fabrics data structure to CSV string
	gocsv.SetCSVWriter(func(out io.Writer) *gocsv.SafeCSVWriter {
		writer := csv.NewWriter(out)
		writer.Comma = ','
		return gocsv.NewSafeCSVWriter(writer)
	})

	csvOutput, serr := gocsv.MarshalString(&df)

	if serr != nil {
		log.Fatalf("error converting to csv: %v", serr)
	}

	// print CSV string to standard output
	fmt.Print(csvOutput)
}
