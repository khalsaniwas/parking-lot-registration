curl "http://localhost:4741/vehicles" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "vehicle": {
        "make": "'"${MAKE}"'",
        "model": "'"${MODEL}"'",
        "color": "'"${COLOR}"'",
        "registration_plate_number": "'"${PLATE}"'",
        "user_id":"'"${USER_ID}"'"
      }
   }'

echo
