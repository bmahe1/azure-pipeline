#!/usr/bin/env bash
set -euo pipefail

rm -f site.zip
zip -r site.zip www
echo "✅ Build complete: site.zip created."
