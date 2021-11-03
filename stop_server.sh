#!/bin/sh

/usr/bin/tmux send -t minecraft-server /save-all ENTER
echo "Saving server with save-all..."
sleep 3
/usr/bin/tmux send -t minecraft-server /stop ENTER
echo "Killing minecraft session"
/usr/bin/tmux kill-session -t minecraft-server
