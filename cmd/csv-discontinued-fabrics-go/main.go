package main

import (
	"context"
	"encoding/csv"
	"fmt"
	"io"
	"log"

	"github.com/Vitality-South/magfabrics-api/pkg/storage"
	"github.com/gocarina/gocsv"
)

func main() {
	ctx := context.Background()

	df, dferr := storage.GetDiscontinuedFabrics(ctx)

	if dferr != nil {
		panic(dferr)
	}

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
