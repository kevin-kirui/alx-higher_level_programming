#!/bin/bash

# Get response size silently
size=$(curl -s "$1" -w "%{size_download}")

# Check curl exit code and display size or error
if [ $? -eq 0 ]; then
  echo "$size" 
else
  echo "Error: curl failed."
fi
