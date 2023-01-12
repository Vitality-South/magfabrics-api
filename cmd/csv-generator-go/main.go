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
	"strings"
	"unicode/utf8"

	"github.com/Vitality-South/magfabrics-api/pkg/client"
	"github.com/Vitality-South/magfabrics-api/pkg/fabric"
	"github.com/gocarina/gocsv"
)

const (
	// version number
	version = 2

	// default delimiter in CSV output
	defaultCSVDelimiter = ','

	// the value that designates a fabric as discontinued in the Status field
	fabricDiscontinuedStatus = "X"
)

type shopifyProduct struct {
	Handle                      string `csv:"Handle"`
	Title                       string `csv:"Title"`
	BodyHTML                    string `csv:"Body (HTML)"`
	Vendor                      string `csv:"Vendor"`
	ProductCategory             string `csv:"Product Category"`
	Type                        string `csv:"Type"`
	Tags                        string `csv:"Tags"`
	Published                   string `csv:"Published"`
	Option1Name                 string `csv:"Option1 Name"`
	Option1Value                string `csv:"Option1 Value"`
	Option2Name                 string `csv:"Option2 Name"`
	Option2Value                string `csv:"Option2 Value"`
	Option3Name                 string `csv:"Option3 Name"`
	Option3Value                string `csv:"Option3 Value"`
	VariantSKU                  string `csv:"Variant SKU"`
	VariantGrams                string `csv:"Variant Grams"`
	VariantInventoryTracker     string `csv:"Variant Inventory Tracker"`
	VariantInventoryQty         string `csv:"Variant Inventory Qty"`
	VariantInventoryPolicy      string `csv:"Variant Inventory Policy"`
	VariantFulfillmentService   string `csv:"Variant Fulfillment Service"`
	VariantPrice                string `csv:"Variant Price"`
	VariantCompareAtPrice       string `csv:"Variant Compare At Price"`
	VariantRequiresShipping     string `csv:"Variant Requires Shipping"`
	VariantTaxable              string `csv:"Variant Taxable"`
	VariantBarcode              string `csv:"Variant Barcode"`
	ImageSrc                    string `csv:"Image Src"`
	ImagePosition               string `csv:"Image Position"`
	ImageAltText                string `csv:"Image Alt Text"`
	GiftCard                    string `csv:"Gift Card"`
	SEOTitle                    string `csv:"SEO Title"`
	SEODescription              string `csv:"SEO Description"`
	GoogleProductCategory       string `csv:"Google Shopping / Google Product Category"`
	Gender                      string `csv:"Google Shopping / Gender"`
	AgeGroup                    string `csv:"Google Shopping / Age Group"`
	MPN                         string `csv:"Google Shopping / MPN"`
	AdWordsGrouping             string `csv:"Google Shopping / AdWords Grouping"`
	AdWordsLabels               string `csv:"Google Shopping / AdWords Labels"`
	Condition                   string `csv:"Google Shopping / Condition"`
	CustomProduct               string `csv:"Google Shopping / Custom Product"`
	CustomLabel0                string `csv:"Google Shopping / Custom Label 0"`
	CustomLabel1                string `csv:"Google Shopping / Custom Label 1"`
	CustomLabel2                string `csv:"Google Shopping / Custom Label 2"`
	CustomLabel3                string `csv:"Google Shopping / Custom Label 3"`
	CustomLabel4                string `csv:"Google Shopping / Custom Label 4"`
	VariantImage                string `csv:"Variant Image"`
	VariantWeightUnit           string `csv:"Variant Weight Unit"`
	VariantTaxCode              string `csv:"Variant Tax Code"`
	CostPerItem                 string `csv:"Cost per item"`
	PriceInternational          string `csv:"Price / International"`
	CompareAtPriceInternational string `csv:"Compare At Price / International"`
	Status                      string `csv:"Status"`
}

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

func nospace(s string) string {
	return strings.ReplaceAll(s, " ", "-")
}

func shopifyProducts(fabrics []*fabric.Fabric) []shopifyProduct {
	products := []shopifyProduct{}

	for _, f := range fabrics {
		products = append(products, shopifyProduct{
			Handle: nospace(f.ProductCode),
		})
	}

	return products
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

	shopify := flag.Bool("shopify", false, "Shopify csv output format (default is false)")

	printVersion := flag.Bool("version", false, "print version number and exit")

	flag.Parse()

	// print version and exit if version flag was supplied
	if *printVersion {
		fmt.Fprintf(os.Stderr, "%d\n", version)

		os.Exit(1)
	}

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

	data := func() interface{} {
		if *shopify {
			return shopifyProducts(fabrics)
		}

		return fabrics
	}

	// convert fabrics data structure to CSV string
	gocsv.SetCSVWriter(func(out io.Writer) *gocsv.SafeCSVWriter {
		writer := csv.NewWriter(out)
		writer.Comma = delim
		return gocsv.NewSafeCSVWriter(writer)
	})

	csvOutput, serr := gocsv.MarshalString(&data)

	if serr != nil {
		log.Fatalf("error converting to csv: %v", serr)
	}

	// print CSV string to standard output
	fmt.Print(csvOutput)
}
