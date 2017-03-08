#!/bin/sh

API="http://localhost:4741"
URL_PATH="/products"
# ID="58ba357cf61cbefc4823f8ac"
TOKEN="QCWV8a49nIfmcfuOpEcU4XcUaB8I42b7l1bC4+6EGEM=--5SDx1bGxQ8VqEIsZw8Q0YY3XnKQYvTrO3T6bTFupLy8="
NAME="sweatshirt"
PRICE=39.99
DESCRIPTION="hoodie"
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
