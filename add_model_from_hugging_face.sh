#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <name> <link>"
    exit 1
fi


name="$1"
repo="$2"
file="$3" 

if [[ -n "$name" && -n "$repo" && -n "$file" ]]; then
	source config.sh
	ssh "$ssh_config_profile_name"<< END_SCRIPT
	source ~/miniconda3/etc/profile.d/conda.sh
	conda activate base
	mkdir -p "ollama/$name"
	cd "ollama/$name"
	huggingface-cli download "$repo" "$file" --local-dir "./" --local-dir-use-symlinks False
	echo "FROM ~/ollama/$name/$file " > "Modelfile"
	chmod o+rx "Modelfile"
	ollama create "$name" -f "./Modelfile"
	exit
END_SCRIPT
fi
