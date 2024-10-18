#!/usr/bin/env bash

# Ask for the device name
echo "Enter the device name (e.g., Monitor_A, Monitor_B):"
#Store the input in the "device_name" variable
read device_name

# Log file to store heart rate data
log_file="heart_rate_log.txt"

# Display the PID of the script
echo "Heart rate monitoring started for $device_name."
# Display where the data is being logged to
echo "Logging data to $log_file"
# In case one needs to stop the script from running
echo "Press Ctrl+C to stop."

# Infinite loop to log data every second
while true
do
    # Get the current timestamp
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    
    # Simulate heart rate (random number between 60 and 100)
    heart_rate=$((RANDOM % 41 + 60))
    
    # Log data in the format: timestamp, device name, heart rate
    echo "$timestamp $device_name $heart_rate " >> "$log_file"
    #Delay the execution of the heart rate monitor script for 1 second
    sleep 1
done &
echo "Script is running in the background with PID $!"
