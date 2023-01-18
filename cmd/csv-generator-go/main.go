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
	Dimensions                  string `csv:"Dimensions"`
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

func buildHtmlDescription(body strings.Builder, f *fabric.Fabric) string {
	body.WriteString(`<div class="magfabrics-body">`)

	if f.Disclaimer != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-description">Description: %s</p>`, f.Disclaimer))
	}

	body.WriteString(fmt.Sprintf(`<p class="magfabrics-sku">MagFabrics SKU #: %s</p>`, f.Sku))

	if f.HRepeat != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-hrepeated">Horizontal Repeat: %s</p>`, f.HRepeat))
	}

	if f.VRepeat != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-vrepeated">Vertical Repeat: %s</p>`, f.VRepeat))
	}

	if f.Color != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-color">Color: %s</p>`, f.Color))
	}

	if len(f.Uses) != 0 {
		uses := strings.Join(f.Uses, ", ")

		body.WriteString(fmt.Sprintf(`<p class="magfabrics-uses">Uses: %s</p>`, uses))
	}

	if f.Contents != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-contents">Contents: %s</p>`, f.Contents))
	}

	if f.DoubleRubs != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-double-rubs">Double Rubs: %s</p>`, f.DoubleRubs))
	}

	if len(f.Designs) != 0 {
		designs := strings.Join(f.Designs, ", ")

		body.WriteString(fmt.Sprintf(`<p class="magfabrics-designs">Design: %s</p>`, designs))
	}

	if len(f.Categories) != 0 {
		categories := strings.Join(f.Categories, ", ")

		body.WriteString(fmt.Sprintf(`<p class="magfabrics-categories">Categories: %s</p>`, categories))
	}

	if f.Width != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-width">Width: %s</p>`, f.Width))
	}

	if f.CleaningCode != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-cleaning-code">Cleaning Code: %s</p>`, f.CleaningCode))
	}

	if f.Origin != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-origin">Origin: %s</p>`, f.Origin))
	}

	if f.Brand != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-brand">Brand: %s</p>`, f.Brand))
	}

	if f.FireCode != "" {
		body.WriteString(fmt.Sprintf(`<p class="magfabrics-fire-code">Fire Code: %s</p>`, f.FireCode))
	}

	body.WriteString(`</div>`)

	return body.String()
}

func shopifyProducts(fabrics []*fabric.Fabric, handlePrefix, inventoryPolicy, fulfillmentService *string, toggleArchived *bool) []shopifyProduct {
	products := []shopifyProduct{}

	for _, f := range fabrics {
		handleFunc := func() string {
			if *handlePrefix == "" {
				return nospace(f.ProductCode)
			}

			return nospace(fmt.Sprintf("%v %s", handlePrefix, f.ProductCode))
		}

		archivedFunc := func() string {
			if *toggleArchived {
				if f.Status == fabricDiscontinuedStatus {
					return "archived"
				}

				return "active"
			}

			return "active"
		}

		publishedFunc := func() string {
			if *toggleArchived {
				if f.Status == fabricDiscontinuedStatus {
					return "FALSE"
				}

				return "TRUE"
			}

			return "TRUE"
		}

		var body strings.Builder

		bodyString := buildHtmlDescription(body, f)

		products = append(products, shopifyProduct{
			Handle:   handleFunc(),
			Title:    f.PatternColorCombo,
			BodyHTML: bodyString,
			Vendor:   *fulfillmentService,
			// ProductCategory:
			Tags:      strings.Join(f.Uses, ", "),
			Published: publishedFunc(),
			// Option1Name:
			// Option1Value:
			// Option2Name:
			// Option2Value:
			// Option3Name:
			// Option3Value:
			VariantSKU: f.Sku,
			// VariantGrams:
			// VariantInventoryTracker:
			VariantInventoryQty: func() string {
				if f.Inventory != nil {
					return f.Inventory.Total
				}

				return ""
			}(),
			VariantInventoryPolicy:    *inventoryPolicy,
			VariantFulfillmentService: *fulfillmentService,
			VariantPrice:              f.DisplayPrice,
			// VariantCompareAtPrice:
			// VariantRequiresShipping:
			// VariantTaxable:
			// VariantBarcode:
			ImageSrc: f.Image,
			// ImagePosition:
			// ImageAltText:
			// GiftCard:
			// SEOTitle:
			// SEODescription:
			// GoogleProductCategory:
			// VariantImage:
			// VariantWeightUnit:
			// VariantTaxCode:
			// CostPerItem:
			Status: archivedFunc(),
		})

		for _, v := range f.SupplementalImages {
			products = append(products, shopifyProduct{
				Handle:   handleFunc(),
				ImageSrc: v,
			})
		}
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
	shopifyHandlePrefix := flag.String("shopifyHandlePrefix", "", "Add a custom prefix to the Shopify Handle for each fabric. This can be useful if you sell multiple brands want MagFabrics fabrics handles to not conflict with other Shopify product handles.")
	shopifyToggleArchived := flag.Bool("shopifyArchiveDiscontinued", true, "Set Shopify published to false & status to archived if fabric is discontinued (default is true)")
	shopifyVariantInventoryPolicy := flag.String("shopifyVariantInventoryPolicy", "continue", "Set Shopify Variant Inventory Policy (default is continue)")
	shopifyFulfillmentService := flag.String("shopifyFulfillmentService", "magfabrics", "Set Shopify Fulfillment Service (default is MagFabrics")

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

	// convert fabrics data structure to CSV string
	gocsv.SetCSVWriter(func(out io.Writer) *gocsv.SafeCSVWriter {
		writer := csv.NewWriter(out)
		writer.Comma = delim
		return gocsv.NewSafeCSVWriter(writer)
	})

	csvOutput, serr := func() (string, error) {
		if *shopify {
			data := shopifyProducts(fabrics, shopifyHandlePrefix, shopifyVariantInventoryPolicy, shopifyFulfillmentService, shopifyToggleArchived)
			return gocsv.MarshalString(&data)
		}

		return gocsv.MarshalString(&fabrics)
	}()

	if serr != nil {
		log.Fatalf("error converting to csv: %v", serr)
	}

	// print CSV string to standard output
	fmt.Print(csvOutput)
}
