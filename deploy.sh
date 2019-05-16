#!/bin/bash

API_KEY=$1

if [ -z $API_KEY ]; then
  echo "Please provide an api key for remote writes to prometheus"
  exit 1
fi

sed -i -e 's/\PASSWORD_PLACEHOLDER/'$API_KEY'/g' prometheus.yml

cf push
