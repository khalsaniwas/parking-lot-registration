curl "http://localhost:4741/vehicles" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "vehicle": {
        "make": "'"${MAKE}"'",
        "model": "'"${MODEL}"'",
        "registration_plate_number": "'"${PLATE}"'"
      }
   }'

echo
