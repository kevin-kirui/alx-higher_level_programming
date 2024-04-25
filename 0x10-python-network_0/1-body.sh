#!/bin/bash

# Send GET request to the URL and capture the response
response=$(curl -s -w "%{http_code}" -o temp_body.txt "$1")

# Extract the response status code
status_code=$(tail -c 3 temp_body.txt)

# Check if the request was successful (status code 200)
if [ "$status_code" -eq 200 ]; then
    # Display the body of the response
    cat temp_body.txt | sed '1,/^$/d'
else
    echo "Error: Request failed with status code $status_code"
fi

# Clean up temporary file
rm -f temp_body.txt
