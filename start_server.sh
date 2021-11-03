#!/bin/sh
/usr/bin/tmux new-session -s minecraft-server -d
tmux send -t minecraft-server "/usr/bin/java -Xms1024M -Xmx2048M -jar /opt/mcserver/minecraft_server_1.17.1.jar nogui" ENTER
