#!/bin/sh

API="http://localhost:4741"
URL_PATH="/orders"
# ID="58c03a20a2f35325dcacab1b"
TOKEN="Awwv3nUP5ikVdfZjBdmDRB9tic2DpmEWZrMx4VxJHpw=--02o/+Cm6fXEn66pKTaL29rDvmfTBupEQvSdcuHM5Z24="
# NAME="shoes"
# PRICE=49.99
# DESCRIPTION="blue shoes"
# IMG="path"
VERB=POST

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request ${VERB} \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "order": {
      "items": [
      {
        "_id": "980ru3290",
        "name": "shirt",
        "price": 19.99,
        "description": "cool shirt",
        "quantity": 2
      },
      {
        "_id": "80f0942",
        "name": "shoes",
        "price": 29.99,
        "description": "cheap jordans",
        "quantity": 1
      },
      {
        "_id": "uc89ewfee23",
        "name": "mug",
        "price": 9.99,
        "description": "#1 Dad",
        "quantity": 1
      }
      ]
    }
  }'

echo
