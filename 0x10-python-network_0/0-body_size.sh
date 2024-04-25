#!/usr/bin/python3

# Get response size silently
size=$(curl -s "$1" -w "%{size_download}")

# Check curl exit code and display size or error
if [ $? -eq 0 ]; then
  echo "Response body size: $size bytes"
else
  echo "Error: curl failed."
fi
