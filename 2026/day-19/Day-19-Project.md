# Shell Scripting Project: Log Rotation, Backup & Crontab
## Task 1: Log Rotation Script
Create log_rotate.sh that:
- Takes a log directory as an argument (e.g., /var/log/myapp)
- Compresses .log files older than 7 days using gzip
- Deletes .gz files older than 30 days
- Prints how many files were compressed and deleted
- Exits with an error if the directory doesn't exist
