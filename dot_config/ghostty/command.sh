sleep 0.2
#width=$(tput cols)
height=$(tput lines)

if [[ "$height" -lt 30 ]]; then
	#echo "quick: $height" >> /tmp/workspaces/test/ghostty.log
	/opt/homebrew/bin/tmux -f ~/.config/tmux/tmux.conf new -As quick
else
	#echo "normal: $height" >> /tmp/workspaces/test/ghostty.log
	/opt/homebrew/bin/tmux -f ~/.config/tmux/tmux.conf new -As main
fi
