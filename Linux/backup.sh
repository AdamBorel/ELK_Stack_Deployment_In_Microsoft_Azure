#!/bin/bash
tar cvf /var/backup/home.tar
mv /var/backup/home.tar -C /home
mv /var/backup/home.tar /var/backup/home.12252020.tar
tar cvf /var/backup/system.tar -C /home
ls -lh /var/backup > /var/backup/file_report.txt
free -h > /var/backup/disk_report.txt
