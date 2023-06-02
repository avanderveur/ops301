#!/bin/bash

# Copy using var log syslog and append current date and time to file name
source_file="/var/log/syslog"
destination_file="syslog_$(date +%Y-%m-%d_%H-%M-%S).log"

# Copy the source file to the current working directory with the new filename
cp "$source_file" "$destination_file"

# success message
echo "File copied successfully. New filename: $destination_file"
