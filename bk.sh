#!/bin/bash
cd /var/www/trybackupdb
git add .
git commit -m "$1"
mysqldump -u backup wordpress > wordpress.sql
git add wordpress.sql
git commit -m "Backup Wordpress Database"
git push 
