curl --include --request PATCH http://localhost:4741/vehicles/${ID} \
--header 'Content-Type:application/json' \
--data '{
  "vehicle": {
      "make": "'"${MAKE}"'",
      "model": "'"${MODEL}"'",
      "color": "'"${COLOR}"'",
      "registration_plate_number": "'"${PLATE}"'"

  }
}'

echo
