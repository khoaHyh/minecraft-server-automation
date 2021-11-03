#!/bin/sh

# create backup file
cd $SOURCE_DIR
tmux send -t minecraft-server 'say Server backup starting. World no longer saving...' ENTER
sleep 1
tmux send -t minecraft-server /save-off ENTER
tmux send -t minecraft-server /save-all ENTER
echo "Executed save-off."
echo "Executed save-all."
sleep 3
tar -cvzf $HOME/mc-backups/world-`date +%d-%m-%y_%H_%M_%S`.tar.gz /opt/mc-server/world
echo "Backup world."
tmux send -t minecraft-server /save-on ENTER
echo "Executed save-on."
tmux send -t minecraft-server 'say Backup complete. World now saving.' ENTER
echo "Backup finished!"
