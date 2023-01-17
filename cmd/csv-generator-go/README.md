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
  -version
        print version number and exit
```

# Download links for latest prebuilt versions

[Windows x64](https://images.magfabrics.com/apps/magfabrics-csv-amd64-v2.exe)

[Windows x32](https://images.magfabrics.com/apps/magfabrics-csv-386-v2.exe)

# Shopify Mode

```
Usage:
  -shopify
      Turns the output into a Shopify-ready CSV Product Import format

  -shopifyHandlePrefix=""
      Set a prefix for the Handle on all shopify products, in the case that your Shopify store sells multiple products from different brands (requires -shopify to be enabled)

  -shopifyToggleArchived=true/false
      Set products as Archived/Unpublished if they are discontinued (default is true, also requires -shopify to be enabled)
```

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
