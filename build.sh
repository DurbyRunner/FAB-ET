#!/bin/bash

# Install Hugo (you can specify the version if needed)
echo "Installing Hugo..."
curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | jq -r .assets[0].browser_download_url | wget -i - -O hugo.deb
sudo dpkg -i hugo.deb

# Run the Hugo build process
echo "Building Hugo site..."
hugo

# Clean up
rm hugo.deb
