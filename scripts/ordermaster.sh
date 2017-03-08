#!/bin/sh

API="http://localhost:4741"
URL_PATH="/orders"
# ID="58c03a20a2f35325dcacab1b"
TOKEN="qklS1KkOTHP8VxjJfJNtNv5fgEQHxEkoxSzPrS4qbIU=--NM2DXenUUCrSItNzjUpGe56ByFwH5HduGQH4UUTMpzM="
# NAME="shoes"
# PRICE=49.99
# DESCRIPTION="blue shoes"
# IMG="path"
VERB=GET

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request ${VERB} \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "order": {
      "items": [
      {
        "jellyfish": 282828282,
        "reference": true
      }
      ]
    }
  }'

echo
