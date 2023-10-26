#!/bin/bash

# Install the Snyk CLI (if not already installed)
if ! command -v snyk &> /dev/null; then
    npm install -g snyk
fi

# Authenticate to Snyk using your API token (replace with your own token)
snyk auth YOUR_SNK_API_TOKEN

# Run Snyk to test for vulnerabilities
snyk test

# Check if vulnerabilities were found
if [ $? -eq 0 ]; then
    echo "No vulnerabilities found."
else
    echo "Vulnerabilities found!"
fi
