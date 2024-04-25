#!/bin/bash

# Send GET request to the URL and display the body of the response
response=$(curl -s -w "%{http_code}" "$1")

# Check if the response contains a 200 status code
if [[ $response == *"200"* ]]; then
    # Extract the body of the response and display it
    echo "$response" | sed 's/.*\r\n\r\n//'
else
    echo "Error: Request failed or response status code is not 200."
fi

