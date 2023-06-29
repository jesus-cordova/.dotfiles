#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
	selected=$(find ~/Projects -mindepth 1 -maxdepth 1 -type d | fzf-tmux)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)

tmux has-session -t $selected_name
 if [[ $? == 0 ]]; then
	 echo "already exists"
    #tmux switch-client -t $selected_name
    # tmux attach-session -t $selected_name 
    tmux new-session -s $selected_name -c $selected
     
 else
	 echo "created new window"
	 tmux new-session -ds $selected_name -c $selected
#     tmux attach-session -t $selected_name 
fi


tmux switch-client -t $selected_name



 #session_index=$(tmux list-windows -F '#I "#W"' | awk '$2 ~ /'"$selected_name"'/ { print $1 }')

# if [[ $session_index == "" ]]; then
	 #echo "created new window"
	#tmux new-window -n $selected_name -c ~/Projects/$selected_name
	#cd ~/Projects/$selected_name
 #else
	 #echo "already exists"
	 #tmux select-window -t $session_index
#fi
