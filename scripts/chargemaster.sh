#!/bin/sh

API="http://localhost:4741"
URL_PATH="/charges"
# ID="58ba357cf61cbefc4823f8ac"
TOKEN="N0QS75a0A28SO2J4iyx+kEERa9tN3elvHeG/nabr8AI=--R/Ffz2QFQLHHDO7L4Ag7FaatYkds8T1gydYfFMziTz0="
TEST="cdjxk38dlke89r5iodkl"
VERB=POST

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request ${VERB} \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "charge": {
      "stripeToken": "'"${TEST}"'"
    }
  }'

echo
