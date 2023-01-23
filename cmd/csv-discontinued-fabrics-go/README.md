# Latest version number: 1

## Short Description

Instead of getting all of the sellable and current list of in-stock Fabrics, this program will give you a list of permanently discontinued and deleted fabrics. You can use this output to compare to your existing list of Fabrics and check if you still display any discontinued or deleted fabrics.

# Usage

The -apikey flag is required.

Run the app with the -h flag on the command line to see all options.

```
Usage:

  -apikey key
        API key for MagFabrics API (required)
  -version
        print version number and exit
```

# Build your own version for any OS and architecture that Go supports

Go 1.18+ is required

## Example build commands

```bash
GOOS=windows GOARCH=amd64 go build -o magfabrics-discontinued-fabrics-csv-x64.exe
GOOS=windows GOARCH=386 go build -o magfabrics-discontinued-fabrics-csv-x32.exe
GOOS=darwin GOARCH=amd64 go build -o magfabrics-discontinued-fabrics-csv-macos-amd64
GOOS=darwin GOARCH=arm64 go build -o magfabrics-discontinued-fabrics-csv-macos-arm64
GOOS=linux GOARCH=amd64 go build -o magfabrics-discontinued-fabrics-csv-linux-arm64
```
