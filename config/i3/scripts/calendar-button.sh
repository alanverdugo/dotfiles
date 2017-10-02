#!/bin/bash
echo $(date '+%Y-%m-%d %H:%M')
if [[ $BLOCK_BUTTON == '1' ]]; then
	# On left-click, Execute orage (a GUI calendar)
    orage
elif [[ $BLOCK_BUTTON == '3' ]]; then
	# On right-click, show the full timestamp and other data.
    notify-send "$(date "+%A, %e %B %Y %n%H:%M:%S, %Z")" -t 2000
fi
