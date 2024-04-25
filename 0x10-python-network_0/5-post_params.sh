#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the argument
url="$1"

# Set headers and their values
email="test@gmail.com"
subject="I will always be here for PLD"
header1="X-Email: $email"
header2="X-Subject: $subject"

# Use curl to send the POST request with headers
response=$(curl -s -X POST -H "$header1" -H "$header2" "$url")

# Check if curl command was successful (exit code 0)
if [ $? -eq 0 ]; then
  echo "Response body:"
  echo "$response"
else
  echo "Error: curl failed to post data."
fi
