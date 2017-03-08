#!/bin/sh

API="http://localhost:4741"
URL_PATH="/orders"
ID="58c05073a4f94105b4d374a7"
TOKEN="rkErUEjkPNRl/1whgFOesQ2SwsPOFVak3RIGBIaMKMg=--w6T41R8p/ZCbVPTMYHgsrXm5agPlijcJ1HBVVBoI3VM="
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
        "name": "shoes",
        "price": 50,
        "quantity": 2
      },
      {
        "name": "tshirt",
        "price": 20,
        "quantity": 3
      }
      ]
    }
  }'

echo
