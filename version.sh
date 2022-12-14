#!/bin/bash

versionFile="./VERSION"
packageFile="./browser-lib/package.json"
packageFile2="./npm-lib/package.json"
dartFile="./dart/mag_fabrics/pubspec.yaml"
versionRegex="([0-9]+).([0-9]+).([0-9]+)"
packageRegex="\"version\": \"([0-9]+).([0-9]+).([0-9]+)\""
dartRegex="version: ([0-9]+).([0-9]+).([0-9]+)"
version=""
major=""
minor=""
patch=""

# HELP
help()
{
    echo "Usage: setVersion.sh [-h] [-v] [-p] [-m] [-M]"
    echo "--help: Display this help message"
    echo "--version: See the version number"
    echo "--bump-patch: bump the minor version"
    echo "--bump-minor: bump the minor version"
    echo "--bump-major: bump the major version"

}

# MAIN
while IFS='' read -r line || [[ -n "$line" ]]; do
    if [[ $line =~ $versionRegex ]]; then
        version=$line
        major=${BASH_REMATCH[1]}
        minor=${BASH_REMATCH[2]}
        patch=${BASH_REMATCH[3]}
    fi
done < "$versionFile"

while getopts ":hvpmM" option; do
   case $option in
    h) # display Help
        help
        exit;;
    v) # see version
        echo $version
        exit;;
    p) # bump patch
        patch=$((patch+1))
        replacement="$major.$minor.$patch"
        packageReplacement="\"version\": \"$replacement\""
        dartReplacement="version: $replacement"
        sed -i.bak -E "s/$versionRegex/$replacement/" $versionFile
        sed -i.bak -E "s/$packageRegex/$packageReplacement/" $packageFile
        sed -i.bak -E "s/$packageRegex/$packageReplacement/" $packageFile2
        sed -i.bak -E "s/$dartRegex/$dartReplacement/" $dartFile
        exit;;
    m) # bump minor
        minor=$((minor+1))
        patch=0
        replacement="$major.$minor.$patch"
        packageReplacement="\"version\": \"$replacement\""
        dartReplacement="version: $replacement"
        sed -i.bak -E "s/$versionRegex/$replacement/" $versionFile
        sed -i.bak -E "s/$packageRegex/$packageReplacement/" $packageFile
        sed -i.bak -E "s/$packageRegex/$packageReplacement/" $packageFile2
        sed -i.bak -E "s/$dartRegex/$dartReplacement/" $dartFile
        exit;;
    M) # bump major
        major=$((major+1))
        minor=0
        patch=0
        replacement="$major.$minor.$patch"
        packageReplacement="\"version\": \"$replacement\""
        dartReplacement="version: $replacement"
        sed -i.bak -E "s/$versionRegex/$replacement/" $versionFile
        sed -i.bak -E "s/$packageRegex/$packageReplacement/" $packageFile
        sed -i.bak -E "s/$packageRegex/$packageReplacement/" $packageFile2
        sed -i.bak -E "s/$dartRegex/$dartReplacement/" $dartFile
        exit;;
    \?) # invalid option
        echo "Invalid option"
        help
        exit;;
   esac
done

exit 0