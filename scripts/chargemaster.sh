#!/bin/sh

API="http://localhost:4741"
URL_PATH="/charges"
# ID="58ba357cf61cbefc4823f8ac"
TOKEN="O7NGYZkDWTlgh+YhhQ3OpEWJn9TCemO6TVyDiabj88A=--o/6Ko5bmTmdQBmKDKnKBnUO8VZK/ebmwpilHuVA3n2E="
TEST="blahblahblah"
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
