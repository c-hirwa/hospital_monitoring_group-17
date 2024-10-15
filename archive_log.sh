#!/bin/bash

# Define the log file name
log_file="heart_rate_log.txt"

# Check if the log file exists
if [ ! -f "$log_file" ]; then
    echo "Error: Log file $log_file does not exist."
    exit 1
fi

# Get the current timestamp in the format YYYYMMDD_HHMMSS
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create the new file name with the timestamp appended
archived_log_file="${log_file}_${timestamp}"

# Rename the original log file to the new name
mv "$log_file" "$archived_log_file"

# Confirm the archival
echo "Log file archived as $archived_log_file."
