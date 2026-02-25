loginctl lock-session
pactl set-sink-volume @DEFAULT_SINK@ 125%
playerctl pause -a
smplayer /home/leezannn/dotfiles/ringtones/oggy_ending.mp3 -minigui -ontop -close-at-end -start 0:1

# Wait for 30 seconds
sleep 30

# kill the SMPlayer process if it doesn't close on its own
pkill -f smplayer


