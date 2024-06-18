#!/bin/bash

# Check if a file name was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Assign the first argument to the FILENAME variable
FILENAME=$1

# Get the current date and day
CURRENT_DATE=$(date +"%Y-%m-%d")
CURRENT_DAY=$(date +"%A")

# Create the file and write the date, day, and C++ content into it
cat <<EOL > $FILENAME
// Date: $CURRENT_DATE
// Day: $CURRENT_DAY

#include<iostream>
#include <vector>
#include <set>
#include <map>
#include<unordered_map>
using namespace std;

int main () 
{


  return 0;
}
EOL

# Confirm the file was created and written to
if [ -f "$FILENAME" ]; then
  echo "File '$FILENAME' created and written successfully."
else
  echo "Failed to create the file '$FILENAME'."
fi
