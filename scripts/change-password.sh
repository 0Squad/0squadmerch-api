#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
ID="58c0807add786626e2e4025d"
TOKEN="N0QS75a0A28SO2J4iyx+kEERa9tN3elvHeG/nabr8AI=--R/Ffz2QFQLHHDO7L4Ag7FaatYkds8T1gydYfFMziTz0="
OLDPW="hi"
NEWPW="hello"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
