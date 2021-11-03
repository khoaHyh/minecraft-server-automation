#!/bin/sh

# create backup file
cd $SOURCE_DIR
tmux send -t minecraft-server 'say Server backup starting. World no longer saving...' C-m
tmux send -t minecraft-server /save-off ENTER
tmux send -t minecraft-server /save-all ENTER
echo "Executed save-off."
echo "Executed save-all."
sleep 3
tar -cvzf $HOME/minecraft-server_backup-`date +%d-%m-%y_%H_%M_%S`.tar.gz world
echo "Backup world."
tmux send -t minecraft-server /save-on ENTER
echo "Executed save-on."
tmux send -t minecraft-server 'say Backup complete. World now saving.'
echo "Backup finished!"
