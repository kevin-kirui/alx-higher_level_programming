#!/bin/bash

# Take the URL as input
url=$1

# Send a GET request using curl and store the response
response=$(curl -s -o /dev/null -w "%{http_code}" $url)

# Check if the response code is 200
if [ $response -eq 200 ]; then
    # If the response code is 200, display the body
    curl -s $url
else
    # If the response code is not 200, display an error message
    echo "Error: Response code $response"
fi
