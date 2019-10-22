curl --include --request PATCH http://localhost:4741/vehicles/${ID} \
--header 'Content-Type:application/json' \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "vehicle": {
      "make": "'"${MAKE}"'",
      "model": "'"${MODEL}"'",
      "registration_plate_number": "'"${PLATE}"'"

  }
}'

echo
