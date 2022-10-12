#!/bin/bash

# bump the patch version
./version.sh -p

if [ $? -eq 0 ]; then
    echo "Version bumped successfully"
else
    echo "Version bump failed"
    exit
fi

# get the version number from the VERSION file
version=$(./version.sh -v)

# build grpc web files from protobuf
cd protobuf
./build.sh
cd ..

if [ $? -eq 0 ]; then
    echo "GRPC services generated successfully"
else
    echo "GRPC services generation failed"
    exit
fi

# build the browser lib
cd browser-lib
yarn build
cd ..

if [ $? -eq 0 ]; then
    echo "Browser-lib built successfully"
else
    echo "Browser-lib build failure"
    exit
fi

# get checksum and add to script tag and README
checksum=$(cat browser-lib/dist/magnoliafabrics.min.js | openssl dgst -sha384 -binary | openssl base64 -A
)
sriRegex="integrity=\"(.*)\""
checksumNew="integrity=\"sha384-$checksum\""
sed -i.bak -E "s/$sriRegex/$checksumNew/" ./README.md
sed -i.bak -E "s/$sriRegex/$checksumNew/" ./browser-lib/demo/index.html

# create a copy of browser lib build and add version number - save in versions folder
cp ./browser-lib/dist/magnoliafabrics.min.js ./browser-lib/versions/magnoliafabrics-$version.min.js

# replace brower-lib filename in README and in demo/index.html
cdnVersionRegex="magnoliafabrics-(.*).min.js"
cdnVersionNew="magnoliafabrics-$version.min.js",
sed -i.bak -E "s/$cdnVersionRegex/$cdnVersionNew/" ./README.md
sed -i.bak -E "s/$cdnVersionRegex/$cdnVersionNew/" ./browser-lib/demo/index.html

# build the npm lib
cd npm-lib
yarn build
cd ..

if [ $? -eq 0 ]; then
    echo "Npm-lib built successfully"
else
    echo "Npm-lib build failure"
    exit
fi

# publish to github registry
cd npm-lib
npm publish
cd ..

if [ $? -eq 0 ]; then
    echo "NPM lib published successfully"
else
    echo "NPM lib publish failed"
    exit
fi

################################
# publish demo site

# temporarily copy contents browser-lib/versions into demo folder
cp ./browser-lib/versions/* ./demo

BUCKET_NAME=magnolia-api-demo
SRC=browser-lib/demo/
CLOUDFRONT_DISTRIBUTION=ET9D78QSKOJQ6

# copy all files to S3 bucket; delete any files in the bucket
# that no longer exist locally in ${SRC} folder
aws s3 sync ${SRC} s3://${BUCKET_NAME}/ --delete

# fix html files
aws s3 cp \
      --exclude "*" \
      --include "*.html" \
      --content-type="text/html; charset=utf-8"  \
      --cache-control="public, max-age=60" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix css files
aws s3 cp \
      --exclude "*" \
      --include "*.css" \
      --content-type="text/css; charset=utf-8"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix js files
aws s3 cp \
      --exclude "*" \
      --include "*.js" \
      --content-type="text/javascript; charset=utf-8"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix svg files
aws s3 cp \
      --exclude "*" \
      --include "*.svg" \
      --content-type="image/svg+xml"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix png files
aws s3 cp \
      --exclude "*" \
      --include "*.png" \
      --content-type="image/png"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix jpg/jpeg files
aws s3 cp \
      --exclude "*" \
      --include "*.jpg" --include "*.jpeg" \
      --content-type="image/jpeg"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix xml files
aws s3 cp \
      --exclude "*" \
      --include "*.xml" \
      --content-type="application/xml; charset=utf-8"  \
      --cache-control="public, max-age=60" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix xsl files
aws s3 cp \
      --exclude "*" \
      --include "*.xsl" \
      --content-type="application/xslt+xml; charset=utf-8"  \
      --cache-control="public, max-age=60" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix txt files
aws s3 cp \
      --exclude "*" \
      --include "*.txt" \
      --content-type="text/plain; charset=utf-8"  \
      --cache-control="public, max-age=60" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix json/map/topojson files
aws s3 cp \
      --exclude "*" \
      --include "*.json" --include "*.map" --include "*.topojson" \
      --content-type="application/json; charset=utf-8"  \
      --cache-control="public, max-age=60" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix ico files
aws s3 cp \
      --exclude "*" \
      --include "*.ico" \
      --content-type="image/x-icon"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix zip files
aws s3 cp \
      --exclude "*" \
      --include "*.zip" \
      --content-type="application/zip"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix m4v files
aws s3 cp \
      --exclude "*" \
      --include "*.m4v" \
      --content-type="video/mp4"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix woff files
aws s3 cp \
      --exclude "*" \
      --include "*.woff" \
      --content-type="font/woff"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/

# fix woff2 files
aws s3 cp \
      --exclude "*" \
      --include "*.woff2" \
      --content-type="font/woff2"  \
      --cache-control="public, max-age=31536000, immutable" \
      --metadata-directive="REPLACE" \
      --recursive \
       s3://${BUCKET_NAME}/ \
       s3://${BUCKET_NAME}/


# remove all magnoliafabrics-$version.min.js files from demo folder
rm ./browser-lib/demo/magnoliafabrics-*.min.js

# Because PWAs caching will prevent seeing the latest changes, we need to invalidate the cache
aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_DISTRIBUTION} --paths '/*'

# create commit and tag(and update latest tag)
git add .
git commit -m "Updated builds, create tags, bump version to $version"
git tag $version
git tag latest -f
git push origin :latest
git push origin latest
git push origin $version
git push

if [ $? -eq 0 ]; then
    echo "Build deployed succesfully"
else
    echo "Deployment failure"
    exit
fi
