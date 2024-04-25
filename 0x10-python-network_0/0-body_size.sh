#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the argument
url="$1"

# Use curl to get the response size
response_size=$(curl -s -o /dev/null -w "%{size_download}" "$url")

# Check if curl command was successful (exit code 0)
if [ $? -eq 0 ]; then
  echo "Response body size: $response_size bytes"
else
  echo "Error: curl failed to retrieve the response size."
fi
