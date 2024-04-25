#!/bin/bash

# Check if the URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send an OPTIONS request using curl to fetch allowed methods
allowed_methods=$(curl -s -i -X OPTIONS "$1" | grep "Allow:" | cut -d ' ' -f 2-)

# Display the allowed methods
echo "$allowed_methods"
