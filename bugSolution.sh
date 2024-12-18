#!/bin/bash

# This script handles cases where the input file may not exist.

input_file="my_file.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found."
exit 1
fi

# Process the file
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$input_file"

# This line will only be reached if the file exists and is processed successfully
echo "File processing complete."