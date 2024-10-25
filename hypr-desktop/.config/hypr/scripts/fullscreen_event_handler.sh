#!/usr/bin/env bash

function handle {
	if [[ ${1:0:10} == "fullscreen" ]]; then
		if [[ ${1:12:13} == "1" ]]; then
			pkill gammastep
		else
			pkill gammastep ; hyprctl dispatch exec "gammastep -c ~/.config/gammastep/gammastep.conf"
		fi
	fi
}

socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do handle "$line"; done
