# rpi-docker-backup
This image automatically:
* Backups your files at 04:00 (overwrite `/crontab` to change this)
* Keeps only the last 5 backups (removes older ones) 

## Running
```bash
docker run \
   -d \
   --name=backup \
   --restart=unless-stopped \
   -v [DIRECTORY_YOU_WANT_TO_BACKUP]:/backup \
   -v [OUTPUT_DIRECTORY]:/output \
   koenkk/rpi-backup
```