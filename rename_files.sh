#!/bin/bash

# Rename directories and files to lowercase with underscores

# Rename directories
find . -type d | while read -r dir; do
  newdir=$(dirname "$dir")/$(basename "$dir" | tr ' ' '_')
  if [ "$dir" != "$newdir" ]; then
    mv "$dir" "$newdir"
  fi
done

# Rename files
find . -type f | while read -r file; do
  newfile=$(dirname "$file")/$(basename "$file" | tr ' ' '_')
  if [ "$file" != "$newfile" ]; then
    mv "$file" "$newfile"
  fi
done

echo "All directories and files have been renamed to lowercase with underscores."
