#!/bin/bash

# Get input from the user
read -p "Enter a 4-digit integer: " input_integer

# Check if the input is a 4-digit integer
if [[ ! "$input_integer" =~ ^[0-9]{4}$ ]]; then
    echo "Error: Please enter a valid 4-digit integer."
    exit 1
fi

# Use SHA-256 hashing algorithm to hash the input
hashed_value=$(echo -n "$input_integer" | sha256sum | awk '{print $1}')

# Display the result
echo "Input: $input_integer"
echo "SHA-256 Hash: $hashed_value"

echo -e "Input: $input_integer\nSHA-256 Hash: $hashed_value" > hash_output.txt

