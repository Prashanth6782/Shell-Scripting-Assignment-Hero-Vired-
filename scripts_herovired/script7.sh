#!/bin/bash

PROCESS="apache2"
LOG_FILE="$HOME/process_check.log"

# Check if the process is running

if pgrep -x "$PROCESS" > /dev/null
then
    echo "$(date): $PROCESS is running." >> $LOG_FILE
else
    echo "$(date): $PROCESS is not running. Starting $PROCESS..." >> $LOG_FILE
    # Start the process
    sudo service $PROCESS start
    
    # Check if the process started successfully
    if pgrep -x "$PROCESS" > /dev/null
    then
        echo "$(date): $PROCESS started successfully." >> $LOG_FILE
    else
        echo "$(date): Failed to start $PROCESS." >> $LOG_FILE
    fi
fi



