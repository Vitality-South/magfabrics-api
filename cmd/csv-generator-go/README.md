# Latest version number: 2

# Usage

The -apikey flag is required.

Run the app with the -h flag on the command line to see all options.

```
Usage:

  -apikey key
        API key for MagFabrics API (required)
  -d delimiter
        csv delimiter (default is comma)
  -ignorediscontinued
        ignore discontinued fabrics (default is false)
  -shopify
      Turns the output into a Shopify-ready CSV Product Import format
  -shopifyHandlePrefix=example
      Set a prefix for the Handle on all shopify products, in the case that your Shopify store sells multiple products from different brands (requires -shopify to be enabled)
  -shopifyArchiveDiscontinued=true/false
      Set products as Archived/Unpublished if they are discontinued (requires -shopify to be enabled, default is set to true)
  -shopifyVariantInventoryPolicy=continue/deny
      Sets Shopify Variant Inventory Policy (requires -shopify to be enabled, default is set to continue)
  -shopifyFulfillmentService=example
      Sets Shopify Fulillment Service (requires -shopify to be enabled, default is set to manual)
  -version
        print version number and exit
```

# Download links for latest prebuilt versions

[Windows x64](https://images.magfabrics.com/apps/magfabrics-csv-amd64-v2.exe)

[Windows x32](https://images.magfabrics.com/apps/magfabrics-csv-386-v2.exe)

# Shopify Mode

Shopify mode outputs a CSV in the correct format for importing to Shopify.

## Changes for Shopify Format

- Product Code becomes the Handle for a Shopify product.

- PatternColorCombo becomes the Title for a Shopify product.

- The Body HTML for a Shopify Product is generated based on the existence of the Disclaimer, HRepeat, VRepeat, Color, Uses, Contents, Double Rubs, Designs, Categories, Width, Cleaning Code, Brand, and Fire Code fields. It is exact same information as you see on the [Demo API](demo.magfabrics.com). The reason all of these are grouped into the Body of a Shopify Product is because there is no direct translation between our specified details and Shopify's allowed columns.

- MagFabrics is always the Vendor.

- Uses becomes the Tags for a Shopify Product.

- The Published field is based on the discontinued status of a Fabric and the shopifyArchiveDiscontinued boolean.

- The SKU becomes the overall VariantSKU for a Shopify product.

- The Total Inventory becomes the overall Variant Inventory Quantity for a Shopify product.

- The VariantInventoryPolicy is always set to deny so that a user cannot order a Discontinued product on Shopify once it is out of stock.

- The VariantFulfillmentService is set to manual since MagFabrics does their own shipping.

- The Image url becomes the Image Source for a Shopify Product. Given that there are multiple images on a product, Supplemental Images become an Image Source on another row in the CSV file.

- The Status is based on the discontinued status of a Fabric and the shopifyArchiveDiscontinued boolean.

# Build your own version for any OS and architecture that Go supports

Go 1.18+ is required

## Example build commands

```bash
GOOS=windows GOARCH=amd64 go build -o magfabrics-csv-x64.exe
GOOS=windows GOARCH=386 go build -o magfabrics-csv-x32.exe
GOOS=darwin GOARCH=amd64 go build -o magfabrics-csv-macos-amd64.exe
GOOS=darwin GOARCH=arm64 go build -o magfabrics-csv-macos-arm64.exe
GOOS=linux GOARCH=amd64 go build -o magfabrics-csv-linux-arm64.exe
```
