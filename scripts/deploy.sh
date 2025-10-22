#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <storage-account-name> <container-name>"
  exit 1
fi

STORAGE_ACCOUNT="$1"
CONTAINER="$2"

echo "📦 Uploading files to Azure Blob Storage..."
az storage blob upload-batch \
  --account-name "$STORAGE_ACCOUNT" \
  -s www/ \
  -d "$CONTAINER"

echo "✅ Deployment completed."
