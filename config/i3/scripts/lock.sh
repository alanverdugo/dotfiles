#!/bin/bash
###############################################################################
# This script will use i3lock to lock the screen
###############################################################################

IMAGE_FILE=~/.config/i3/icons/lock-wp.png
i3lock --image=$IMAGE_FILE \
	--show-failed-attempts \
	--color=000000 \
	--ignore-empty-password \
	--show-failed-attempts
