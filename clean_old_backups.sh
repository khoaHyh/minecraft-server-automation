#!/bin/sh
printf "Deleting old backups..."
date +%D
cd $HOME/mc-backups
ls -tr world-*.tar.gz | head -n -5 | xargs --no-run-if-empty rm -v
