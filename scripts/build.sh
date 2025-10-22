#!/bin/bash
set -e

echo "Building static website..."

# Create output folder
mkdir -p www

# Example content (you can replace this with your actual build process)
echo "<h1>Hello from Azure Pipeline!</h1>" > www/index.html

# Zip the folder for publishing
echo "Zipping www folder..."
zip -r site.zip www

echo "Build complete. Created site.zip successfully."
