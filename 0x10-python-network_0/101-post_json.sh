#!/bin/bash

# Check if both URL and file arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <URL> <file>"
    exit 1
fi

# Read the file content into a variable
file_content=$(cat "$2")

# Send JSON POST request with curl and display the response body
curl -s -X POST -d "$file_content" -H "Content-Type: application/json" "$1"
