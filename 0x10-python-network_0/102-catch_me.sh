#!/bin/bash

# Send a request to the server to make it respond with "You got me!"
curl -s -X PUT "0.0.0.0:5000/catch_me" -d "user_id=98" -H "Origin: HolbertonSchool"
