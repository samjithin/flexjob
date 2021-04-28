#!/bin/sh

GCLOUD_LOCATION=$(command -v gcloud)
echo "Using gcloud from $GCLOUD_LOCATION"

gcloud --version
echo "running gcloud services $1 appengine.googleapis.com --project $2"
gcloud init
gcloud services enable appengine.googleapis.com --project terraformlearning-284414