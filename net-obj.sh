#!/bin/bash

# Prompt user for input file path
read -p "Enter the path to the input file: " input_file

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file $input_file not found."
    exit 1
fi

# Prompt user for output file path
read -p "Enter the path to the output file: " output_file

# Process each line in the input file
while IFS= read -r ip; do
    # Remove leading and trailing whitespaces
    ip=$(echo "$ip" | tr -d '[:space:]')

    # Append formatted line to the output file
    echo "network-object host $ip" >> "$output_file"
done < "$input_file"

echo "Script completed. Output saved to $output_file"

