#!/usr/bin/python3

# Import libraries
import subprocess

def get_response_size(url):
  """Fetches the response body size from a given URL using curl."""
  # Use subprocess to run curl command
  command = ["curl", "-s", url, "-w", "%{size_download}"]
  output = subprocess.run(command, capture_output=True)
  
  # Check for errors and return size
  if output.returncode == 0:
    return output.stdout.decode().strip()
  else:
    raise Exception("Error: curl failed to retrieve response size.")

# Get URL from argument (if provided)
if __name__ == "__main__":
  if len(sys.argv) > 1:
    url = sys.argv[1]
    size = get_response_size(url)
    print(f"Response body size: {size} bytes")
  else:
    print("Error: Please provide a URL as an argument.")

