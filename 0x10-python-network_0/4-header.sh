#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the argument
url="$1"

# Set the header and value
header="X-School-User-Id: 98"

# Use curl to get the response body with the header
response=$(curl -s -H "$header" "$url")

# Check if curl command was successful (exit code 0)
if [ $? -eq 0 ]; then
  echo "Response body:"
  echo "$response"
else
  echo "Error: curl failed to retrieve the response body."
fi
