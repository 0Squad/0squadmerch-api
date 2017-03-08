#!/bin/sh

API="http://localhost:4741"
URL_PATH="/products"
# ID="58ba357cf61cbefc4823f8ac"
TOKEN="qklS1KkOTHP8VxjJfJNtNv5fgEQHxEkoxSzPrS4qbIU=--NM2DXenUUCrSItNzjUpGe56ByFwH5HduGQH4UUTMpzM="
NAME="shoes"
PRICE=49.99
DESCRIPTION="blue shoes"
IMG="path"
VERB=GET

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request ${VERB} \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "price": "'"${PRICE}"'",
      "description": "'"${DESCRIPTION}"'",
      "img": "'"${IMG}"'"
    }
  }'

echo
