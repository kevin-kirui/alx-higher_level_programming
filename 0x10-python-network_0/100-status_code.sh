#!/bin/bash

# Check if the URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request using curl and store the response in a temporary file
curl -s -o response.txt -w "%{http_code}" "$1"

# Extract and display only the status code from the response
cat response.txt

# Clean up temporary file
rm response.txt
