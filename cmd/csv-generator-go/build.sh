rm -f *.exe csv-generator-go
GOOS=windows GOARCH=arm64 go build -ldflags="-s -w" -o magfabrics-csv-amd64.exe
GOOS=windows GOARCH=386 go build -ldflags="-s -w" -o magfabrics-csv-386.exe
go build -ldflags="-s -w" -o csv-generator-go