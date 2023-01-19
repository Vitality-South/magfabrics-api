VERSION=3

# cleanup binaries
rm -f *.exe csv-generator-go

# Windows
GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o magfabrics-csv-win-amd64-v${VERSION}.exe
GOOS=windows GOARCH=386 go build -ldflags="-s -w" -o magfabrics-csv-win-386-v${VERSION}.exe

# macOS
GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o magfabrics-csv-macos-amd64-v${VERSION}
GOOS=darwin GOARCH=arm64 go build -ldflags="-s -w" -o magfabrics-csv-macos-arm64-v${VERSION}

# native platform
#go build -ldflags="-s -w" -o csv-generator-go

# copy binaries to S3 - accessible via https://images.magfabrics.com
aws s3 cp --cache-control "public, max-age=604800" --content-type "application/octet-stream" magfabrics-csv-win-amd64-v${VERSION}.exe s3://images.magnoliaco.com/apps/magfabrics-csv-win-amd64-v${VERSION}.exe
aws s3 cp --cache-control "public, max-age=604800" --content-type "application/octet-stream" magfabrics-csv-win-386-v${VERSION}.exe s3://images.magnoliaco.com/apps/magfabrics-csv-win-386-v${VERSION}.exe
aws s3 cp --cache-control "public, max-age=604800" --content-type "application/octet-stream" magfabrics-csv-macos-amd64-v${VERSION} s3://images.magnoliaco.com/apps/magfabrics-csv-macos-amd64-v${VERSION}
aws s3 cp --cache-control "public, max-age=604800" --content-type "application/octet-stream" magfabrics-csv-macos-arm64-v${VERSION} s3://images.magnoliaco.com/apps/magfabrics-csv-macos-arm64-v${VERSION}