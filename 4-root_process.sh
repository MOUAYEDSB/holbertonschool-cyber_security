#!/bin/bash

# Check if user argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Get the user's processes with VSZ and RSS greater than 0
ps -u "$1" -o user,pid,vsz,rss,cmd --no-headers | awk '$3 > 0 && $4 > 0 {print}'
