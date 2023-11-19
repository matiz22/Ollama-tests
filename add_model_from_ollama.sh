#!/bin/bash

arg1="$1"
if [ -n "$arg1" ]; then
	source config.sh
	ssh "$ssh_config_profile_name" bash -s<< END_SCRIPT
	echo "$arg1"
	ollama pull "$arg1"
	exit
END_SCRIPT
fi
