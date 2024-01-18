#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory-name>"
    exit 1
fi

TEMPLATE_DIR=~/code/react-template
NEW_PROJECT_DIR=$1

# Create a new project directory
mkdir "$NEW_PROJECT_DIR"
cd "$NEW_PROJECT_DIR"

# Initialize npm and install dependencies
npm init -y
npm install eslint eslint-config-react-app new-component parcel parcel-reporter-static-files-copy prettier process react react-dom react-feather rimraf

# Copy template files
cp $TEMPLATE_DIR/.eslintrc.json .
cp $TEMPLATE_DIR/.parcelrc .

# Update package.json with new scripts
jq '.scripts |= . + {"predev": "rimraf .parcel-cache dist", "dev": "parcel public/index.html", "build": "parcel build public/index.html", "new-component": "new-component"}' package.json > temp.json && mv temp.json package.json
