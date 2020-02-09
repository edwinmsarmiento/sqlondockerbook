#!/bin/bash

#Make script wait for 120 seconds until the upgrade process completes
sleep 120

#Iterate thru all the BAK files in Docker volume
#directory /var/opt/mssql/data is mounted on Docker volume
for f in /var/opt/mssql/*.bak

do
  /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -Q "RESTORE DATABASE [${f:15:-4}] FROM DISK ='$f'"
done
