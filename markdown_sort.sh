#!/bin/bash

# Specify the column number (starting from 1) by which you want to sort
COLUMN_TO_SORT=2

# Extract the table (assuming the table starts with | and ends with |)
TABLE=$(awk '/\|/,/\|/' input.md)

# Sort the table based on the specified column
SORTED_TABLE=$(echo "$TABLE" | sort -t'|' -k$COLUMN_TO_SORT)

# Print the sorted table
echo "$SORTED_TABLE"

