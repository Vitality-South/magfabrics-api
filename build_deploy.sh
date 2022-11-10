#!/bin/bash

# bump the patch version
./version.sh -p

if [ $? -eq 0 ]; then
    echo "#################################################"
    echo "Version bumped successfully"
    echo "#################################################"
else
    echo "#################################################"
    echo "Version bump failed"
    echo "#################################################"
    exit
fi

# get the version number from the VERSION file
version=$(./version.sh -v)

echo "$(tput setaf 2)
888b     d888                                     888 d8b                      d8888 8888888b. 8888888
8888b   d8888                                     888 Y8P                     d88888 888   Y88b  888
88888b.d88888                                     888                        d88P888 888    888  888
888Y88888P888  8888b.   .d88b.  88888b.   .d88b.  888 888  8888b.           d88P 888 888   d88P  888
888 Y888P 888     \"88b d88P\"88b 888 \"88b d88\"\"88b 888 888     \"88b         d88P  888 8888888P\"   888
888  Y8P  888 .d888888 888  888 888  888 888  888 888 888 .d888888        d88P   888 888         888
888   \"   888 888  888 Y88b 888 888  888 Y88..88P 888 888 888  888       d8888888888 888         888
888       888 \"Y888888  \"Y88888 888  888  \"Y88P\"  888 888 \"Y888888      d88P     888 888       8888888
                            888                                                        $(tput setaf 4)Version $version$(tput setaf 2)
                       Y8b d88P
                        \"Y88P\"
$(tput sgr0)"

# build grpc web files from protobuf
cd protobuf
./build.sh

if [ $? -eq 0 ]; then
    echo "#################################################"
    echo "GRPC services generated successfully"
    echo "#################################################"
else
    echo "#################################################"
    echo "GRPC services generation failed"
    echo "#################################################"
    exit
fi

cd ..

# build the browser lib
cd browser-lib
yarn build

if [ $? -eq 0 ]; then
    echo "#################################################"
    echo "Browser-lib built successfully"
    echo "#################################################"
else
    echo "#################################################"
    echo "Browser-lib build failure"
    echo "#################################################"
    exit
fi

cd ..

# get checksum and update in demo html script tag and README
cd updateSRI
node index.js
cd ..

# create a copy of browser lib build and add version number - save in versions folder
cp ./browser-lib/dist/magfabrics.min.js ./browser-lib/versions/magfabrics-$version.min.js

# replace brower-lib filename in README and in demo/index.html
cdnVersionRegex="magfabrics-(.*).min.js"
cdnVersionNew="magfabrics-$version.min.js"
sed -i.bak -E "s/$cdnVersionRegex/$cdnVersionNew/" ./README.md
sed -i.bak -E "s/$cdnVersionRegex/$cdnVersionNew/" ./browser-lib/demo/index.html

# build the npm lib
cd npm-lib
yarn build

if [ $? -eq 0 ]; then
    echo "#################################################"
    echo "Npm-lib built successfully"
    echo "#################################################"
else
    echo "#################################################"
    echo "Npm-lib build failure"
    echo "#################################################"
    exit
fi

cd ..

# publish to github registry
cd npm-lib
npm publish

if [ $? -eq 0 ]; then
    echo "#################################################"
    echo "NPM lib published successfully"
    echo "#################################################"
else
    echo "#################################################"
    echo "NPM lib publish failed"
    echo "#################################################"
    exit
fi

cd ..

################################
# publish demo site

# temporarily copy contents browser-lib/versions into demo folder
cp ./browser-lib/versions/* ./browser-lib/demo

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


# remove all magfabrics-$version.min.js files from demo folder
rm ./browser-lib/demo/magfabrics-*.min.js

# Because PWAs caching will prevent seeing the latest changes, we need to invalidate the cache
aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_DISTRIBUTION} --paths '/*'

# update the spa's version of the npm lib
cd SPA-Example
npm install @vitality-south/magfabrics@latest
cd ..

# create commit and tag(and update latest tag)
git add .
sleep .5
git commit -m "Updated builds, create tags, bump version to $version"
sleep .5
git pull
sleep .5
git tag $version
sleep .5
git tag latest -f
git push origin main :latest
sleep 1
git push origin main latest
sleep 1
git push origin main $version
sleep 1
git push

if [ $? -eq 0 ]; then
    echo "#################################################"
    echo "Build deployed succesfully"
    echo "#################################################"
else
    echo "#################################################"
    echo "Deployment failure"
    echo "#################################################"
    exit
fi



