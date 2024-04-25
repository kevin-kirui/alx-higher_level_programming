#!/bin/bash

# Check if the URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a DELETE request using curl and display the response body
response=$(curl -X DELETE -s -w "%{http_code}" -o response_body.txt "$1")

# Extract the HTTP status code from the response
http_status="${response: -3}"

# Check if the request was successful (HTTP status code 200)
if [ "$http_status" -eq 200 ]; then
    echo "I'm a DELETE request"
else
    echo "Request failed with HTTP status code $http_status"
fi
