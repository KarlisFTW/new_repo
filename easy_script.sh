#!/bin/bash
backup_directory=("/new_repo")
destination_directory=("/backup")
backup_date=$(date +%b-%d-%y)
echo "Starting backup of:  $backup_directory"
sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
if[$? -eq 0]; then
echo "Backup is successfull!"
else 
echo "Couldn't backup directory!"

scp /tmp/$i-$backup_date.tar.gz $destination_directory
if[]; then
echo "$i transfer succeeded!"
else 
echo "$1 transfer failed!"
fi
done

