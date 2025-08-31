#!/bin/bash
set -e

# Download and install Hugo Extended
HUGO_VERSION="0.145.0"
echo "Downloading Hugo Extended v${HUGO_VERSION}..."
curl -L -o hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
tar -xzf hugo.tar.gz
chmod +x hugo

# Build the site
echo "Building Hugo site..."
./hugo --gc --minify

echo "Build completed successfully!"
