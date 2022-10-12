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

# publish SPA-Example?