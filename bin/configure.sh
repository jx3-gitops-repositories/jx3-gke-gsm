#!/bin/bash

set -e

if [ -z $PROJECT_ID ]
then
  echo "Please supply the 'PROJECT_ID' environment variable for your GCP Project ID"
  echo "e.g."
  echo "export PROJECT_ID=myproject"
  exit 1
fi

echo "this script modifies the `dirname "$0"`/../values.auto.tfvars file..."

sed -i -e "s/gcp_project \".*\"/gcp_project = \"${PROJECT_ID}\"/" `dirname "$0"`/../values.auto.tfvars


