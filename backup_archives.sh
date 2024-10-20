#!/usr/bin/env bash

# Set group number for the archive directory
group_number="1"  # Replace with your actual group number
archive_dir="archived_logs_group${group_number}"

# Remote server details
remote_host="e3dcb13292b4.dc9c26bb.alu-cod.online"  # Replace with actual sandbox host info
remote_user="e3dcb13292b4"  # Replace with actual sandbox username
remote_dir="/home/"  # Destination directory on the remote server

# Create the archive directory if it doesn't exist
if [ ! -d "$archive_dir" ]; then
    mkdir "$archive_dir"
    echo "Created directory $archive_dir"
fi

# Move all archived log files (with the pattern heart_rate_log.txt_*) to the archive directory
mv heart_rate_log.txt_* "$archive_dir"

# Check if files were moved successfully
if [ $? -eq 0 ]; then
    echo "Archived log files moved to $archive_dir."
else
    echo "There is No archived log files to move."
    exit 1
fi

# Back up the archived logs to the remote server using scp
scp -r "$archive_dir" "${remote_user}@${remote_host}:${remote_dir}"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful. Archived logs sent to $remote_host."
else
    echo "Backup failed. Please check your connection and details."
    exit 1
fi

