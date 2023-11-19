#!/bin/bash

source config.sh

ssh "$ssh_config_profile_name" bash -s << 'END_SCRIPT'
curl https://ollama.ai/install.sh | sh
exit
END_SCRIPT
