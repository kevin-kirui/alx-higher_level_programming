#!/bin/bash

# Send GET request to the URL and display the body of the response
response=$(curl -s -w "%{http_code}" -o temp_body.txt "$1")

# Check the status code of the response
status_code=$(tail -c 3 temp_body.txt)

# Display the body of the response if the status code is 200
if [ "$status_code" -eq 200 ]; then
    cat temp_body.txt
fi

# Clean up temporary file
rm temp_body.txt
