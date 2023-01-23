VERSION=1
CLOUDFRONT_DISTRIBUTION=ET9D78QSKOJQ6
STORAGE=s3://images.magnoliaco.com/apps
APP=magfabrics-csv-discontinued-fabrics
CACHECONTROL='public, max-age=604800'
CONTENTTYPE=application/octet-stream

# cleanup binaries
rm -f *.exe csv-discontinued-fabrics-go

# Windows
GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o ${APP}-win-amd64-v${VERSION}.exe
GOOS=windows GOARCH=386 go build -ldflags="-s -w" -o ${APP}-win-386-v${VERSION}.exe

# macOS
GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o ${APP}-macos-amd64-v${VERSION}
GOOS=darwin GOARCH=arm64 go build -ldflags="-s -w" -o ${APP}-macos-arm64-v${VERSION}

# native platform
#go build -ldflags="-s -w" -o csv-generator-go

# copy binaries to S3 - accessible via https://images.magfabrics.com
aws s3 cp --cache-control "${CACHECONTROL}" --content-type ${CONTENTTYPE} --metadata-directive="REPLACE" ${APP}-win-amd64-v${VERSION}.exe ${STORAGE}/${APP}-win-amd64-v${VERSION}.exe
aws s3 cp --cache-control "${CACHECONTROL}" --content-type ${CONTENTTYPE} --metadata-directive="REPLACE" ${APP}-win-386-v${VERSION}.exe ${STORAGE}/${APP}-win-386-v${VERSION}.exe
aws s3 cp --cache-control "${CACHECONTROL}" --content-type ${CONTENTTYPE} --metadata-directive="REPLACE" ${APP}-macos-amd64-v${VERSION} ${STORAGE}/${APP}-macos-amd64-v${VERSION}
aws s3 cp --cache-control "${CACHECONTROL}" --content-type ${CONTENTTYPE} --metadata-directive="REPLACE" ${APP}-macos-arm64-v${VERSION} ${STORAGE}/${APP}-macos-arm64-v${VERSION}

# invalidate cloudfront cache
aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_DISTRIBUTION} --paths '/*'