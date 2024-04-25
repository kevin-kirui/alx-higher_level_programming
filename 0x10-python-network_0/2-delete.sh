#!/bin/bash

# Check if the URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a DELETE request using curl and display the response body
response=$(curl -X DELETE -s -w "%{http_code}" -o response_body.txt "$1")

# Check if the request was successful (HTTP status code 200)
if [ "$response" -eq 200 ]; then
    cat response_body.txt
else
    echo "Request failed with HTTP status code $response"
fi

