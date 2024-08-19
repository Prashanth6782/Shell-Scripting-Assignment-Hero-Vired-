#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Ensure only one argument exists, otherwise exit"
    exit 1
fi
DIR="$1"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_DIR="${DIR}/backup_${TIMESTAMP}"
mkdir -p "${BACKUP_DIR}"
find "$DIR" -maxdepth 1 -type f -name "*.txt" -exec cp {} "$BACKUP_DIR" \;
echo "All .txt files have been copied to '$BACKUP_DIR'."
