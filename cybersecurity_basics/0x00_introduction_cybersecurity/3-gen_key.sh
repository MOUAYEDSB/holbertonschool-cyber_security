#!/bin/bash

# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <key_name>"
    exit 1
fi

# Generate the key pair
ssh-keygen -t rsa -b 4096 -f "$1"

# Print message indicating key generation
echo "Generating public/private rsa key pair."
echo "Your identification has been saved in $1"
echo "Your public key has been saved in $1.pub"

# Print key fingerprint and randomart image
ssh-keygen -l -f "$1"
