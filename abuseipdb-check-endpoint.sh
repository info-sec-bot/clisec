#!/bin/bash
# The -G option will convert form parameters (-d options) into query parameters.
# The CHECK endpoint is a GET request.
curl -G https://api.abuseipdb.com/api/v2/check \
  --data-urlencode "ipAddress=$1" \
  -d maxAgeInDays=90 \
  -d verbose \
  -H "Key: $ABUSEIPDB_KEY" \
  -H "Accept: application/json" | jq

