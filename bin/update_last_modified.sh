#!/usr/bin/env bash
#
# Update the last_modified_at field in a markdown file
# based on the file's last modification timestamp.
#
# Generated using Gemini CLI.

# Stop on errors
set -e

# Function to show usage
usage() {
  echo "Usage: $0 <file1> [<file2> ...]"
  exit 1
}

# Check if at least one argument is provided
if [[ "$#" -eq 0 ]]; then
  usage
fi

# Get the operating system name
os_name=$(uname)

# Process each file passed as an argument
for file in "$@"; do
  # Check if file exists
  if [[ ! -f "${file}" ]]; then
    echo "Error: File not found: ${file}"
    continue
  fi

  # Determine the command to get the modification time based on the OS
  if [[ "${os_name}" == "Darwin" ]]; then
    # macOS
    mod_time=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" "${file}")
  else
    # Linux
    mod_time=$(date -r "${file}" "+%Y-%m-%d %H:%M:%S")
  fi

  # Use sed to update the last_modified_at field in-place.
  # The regex matches the beginning of the line, the key, and its value.
  # The replacement uses the modification time we just retrieved.
  # The -i flag for sed differs between macOS and Linux.
  if [[ "${os_name}" == "Darwin" ]]; then
    sed -i '' "s/^last_modified_at:.*/last_modified_at: ${mod_time}/" "${file}"
  else
    sed -i "s/^last_modified_at:.*/last_modified_at: ${mod_time}/" "${file}"
  fi

  echo "Updated 'last_modified_at' in ${file} to ${mod_time}"
done
