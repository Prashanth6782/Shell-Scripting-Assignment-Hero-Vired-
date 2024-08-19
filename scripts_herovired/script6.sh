#!/bin/bash

# Set the source and destination directories
SOURCE_DIR="/home/prashy/documents"
DEST_DIR="/home/prashy/backup"

# Create a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Set the backup file name with the timestamp
BACKUP_NAME="documents_backup_y$TIMESTAMP.tar.gz"

# Create the backup tarball
tar -czf "$BACKUP_NAME" -C "$SOURCE_DIR" .

# Move the backup tarball to the destination directory
mv "$BACKUP_NAME" "$DEST_DIR"

# Log the script run time
echo "Script ran at $(date)" >> /home/prashy/cron_test.log
