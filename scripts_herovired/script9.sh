#!/bin/bash

# File to save the report
output_file="system_report.txt"

# Collecting system uptime
echo "System Uptime:" > $output_file
uptime >> $output_file
echo "" >> $output_file

# Collecting memory usage
echo "Memory Usage:" >> $output_file
free -h >> $output_file
echo "" >> $output_file

# Collecting CPU load
echo "CPU Load:" >> $output_file
top -bn1 | grep "load average" >> $output_file
echo "" >> $output_file

# Collecting disk usage
echo "Disk Usage:" >> $output_file
df -h >> $output_file
echo "" >> $output_file

# Collecting running processes
echo "Running Processes:" >> $output_file
ps aux --sort=-%mem | head -n 10 >> $output_file

# Display the report file
echo "System information report generated and saved to $output_file"
