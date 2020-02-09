#!/bin/bash

#Start the script to restore all database backups
#from Docker volume
#Run script in the background
/tmp/startup/checkbackups_restore.sh &

# Start SQL Server
/opt/mssql/bin/sqlservr
