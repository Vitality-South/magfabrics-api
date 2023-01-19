# Latest version number: 3

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
  -shopifyHandlePrefix="example"
      Set a prefix for the Handle on all shopify products, in the case that your Shopify store sells multiple products from different brands (requires -shopify to be enabled, default is "")
  -shopifyArchiveDiscontinued=true/false
      Set products as Archived/Unpublished if they are discontinued (requires -shopify to be enabled, default is set to true)
  -shopifyVariantInventoryPolicy="continue"/"deny"
      Sets Shopify Variant Inventory Policy (requires -shopify to be enabled, default is set to continue)
  -shopifyFulfillmentService="manual"
      Sets Shopify Fulillment Service (requires -shopify to be enabled, default is set to manual)
  -version
        print version number and exit
```

# Download links for latest prebuilt versions

[Windows x64](https://images.magfabrics.com/apps/magfabrics-csv-win-amd64-v3.exe)

[Windows x32](https://images.magfabrics.com/apps/magfabrics-csv-win-386-v3.exe)

[macOS Intel-based](https://images.magfabrics.com/apps/magfabrics-csv-macos-amd64-v3)

[macOS ARM-based](https://images.magfabrics.com/apps/magfabrics-csv-macos-arm64-v3)

# Shopify Mode

Shopify mode outputs a CSV in the correct format for importing to Shopify. Enable Shopify mode with the `-shopify` command line option.

## Changes for Shopify Format

- Product Code becomes the Handle for a Shopify product. This can be overwritten with the "-shopifyHandlePrefix" option to the generator. For example, if you want to import all fabrics with a MagFabrics prefix to ensure they don't conflict with any other items, you could use -shopifyHandlePrefix="MagFabrics", then the handle for fabric CAMPBELL FERN would be "MagFabrics-CAMPBELLFERN".

- PatternColorCombo becomes the Title for a Shopify product.

- The Body HTML for a Shopify Product is generated based on the existence of the Disclaimer, HRepeat, VRepeat, Color, Uses, Contents, Double Rubs, Designs, Categories, Width, Cleaning Code, Brand, and Fire Code fields. It is exact same information as you see on the [Demo API](demo.magfabrics.com). The reason all of these are grouped into the Body of a Shopify Product is because there is no direct translation between our specified details and Shopify's allowed columns.

- MagFabrics is always the Vendor when running our CSV Generator.

- Uses becomes the Tags for a Shopify Product.

- The Published field is based on the discontinued status of a Fabric and the "-shopifyArchiveDiscontinued" option for the generator. If the "-shopifyArchiveDiscontinued" option is set to false, then our fabrics that are discontinued will be published onto the Shopify website as a product and can be seen by anyone. If it is set to true, then it will not be Published and cannot be seen on the website.

- The SKU becomes the VariantSKU for a Shopify product.

- The Total Inventory of a fabric becomes the Variant Inventory Quantity for a Shopify product.

- The VariantInventoryPolicy is set to deny so that a user cannot order a Discontinued product on Shopify once it is out of stock. This means MagFabrics items that have no inventory can still be sold online. Changing it to deny via, -shopifyVariantInventoryPolicy=deny would make it to where inventory cannot be sold if a product is out of stock.

- The VariantFulfillmentService is set to manual since MagFabrics does their own shipping. This can be overwritten by using the "-shopifyFulfillmentService" option in our generator.

- The Image url becomes the Image Source for a Shopify Product. Given that there are multiple images on a product, Supplemental Images on a fabric become an Image Source on another row in the CSV file, meaning that there will be multiple images for a Shopify Product only if they exist on the fabric.

- The Status is based on the discontinued status of a Fabric and the shopifyArchiveDiscontinued option. If the "-shopifyArchiveDiscontinued" option is set to false, then all Discontinued fabrics will be set as Active and can be seen on the website. If it is set to true, then the Status will be Archived and cannot be seen on the website.

# Build your own version for any OS and architecture that Go supports

Go 1.18+ is required

## Example build commands

```bash
GOOS=windows GOARCH=amd64 go build -o magfabrics-csv-x64.exe
GOOS=windows GOARCH=386 go build -o magfabrics-csv-x32.exe
GOOS=darwin GOARCH=amd64 go build -o magfabrics-csv-macos-amd64
GOOS=darwin GOARCH=arm64 go build -o magfabrics-csv-macos-arm64
GOOS=linux GOARCH=amd64 go build -o magfabrics-csv-linux-arm64
```
