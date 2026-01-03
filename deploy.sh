#!/bin/bash

# Check if bucket name is provided
if [ -z "$1" ]; then
  echo "Error: usage 'npm run deploy -- <bucket-name>'"
  exit 1
fi

BUCKET_NAME=$1

# Determine if a subdirectory exists
if [[ "$BUCKET_NAME" == *"/"* ]]; then
  SUBPATH=$(echo "$BUCKET_NAME" | cut -d'/' -f2-)
  PREFIX="/$SUBPATH/"
  echo "Deploying to subdirectory '$SUBPATH'. Using pathPrefix: $PREFIX"
  npx @11ty/eleventy --pathprefix="$PREFIX"
else
  echo "Deploying to root."
  npx @11ty/eleventy
fi

# Sync to S3
echo "Deploying to s3://$BUCKET_NAME..."
aws s3 sync public s3://$BUCKET_NAME --delete

echo "Deployment complete!"
