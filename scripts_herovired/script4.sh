#!/bin/bash

THRESHOLD=80
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
  EMAIL_SUBJECT="Disk Usage Alert: Root Filesystem at ${DISK_USAGE}%"
  EMAIL_BODY="Warning: disk usage exceeded${DISK_USAGE}% capacity.!!!."
  EMAIL_TO="prashanth153@gmail.com"
  
  echo "$EMAIL_BODY" | mail -s "$EMAIL_SUBJECT" "$EMAIL_TO"
else
  CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
  echo "Disk usage is within limits (${DISK_USAGE}%). CPU Usage: ${CPU_USAGE}%"
fi
