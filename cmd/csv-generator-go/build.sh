VERSION=3
rm -f *.exe csv-generator-go
GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o magfabrics-csv-amd64-v${VERSION}.exe
GOOS=windows GOARCH=386 go build -ldflags="-s -w" -o magfabrics-csv-386-v${VERSION}.exe
go build -ldflags="-s -w" -o csv-generator-go