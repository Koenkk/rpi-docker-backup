#!/bin/sh

# Get date
DATE=$(date +"%m-%d-%y")

# Create zip
cd /backup
zip -r "/output/backup_$DATE.zip" *

# Delete old backups (keep last 5)
cd /output
for f in $(ls -t | sed -e '1,5d') ; do
  rm "$f"
done
