#!/usr/bin/bash

CONTAINER_VER=false

while [[ $# -gt 0 ]]; do
  case $1 in
    --container-ver)
      CONTAINER_VER=true
      shift
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

bash ./scripts/nvim-setup.sh
bash ./scripts/tmux-setup.sh
bash ./scripts/zsh-setup.sh

if $CONTAINER_VER; then
	stow\
		--adopt\
		-t $HOME\
		home\
		nvim\
		tmux\
		zsh
else 
	stow\
		--adopt\
		-t $HOME\
		home\
		alacritty\
		nvim\
		tmux\
		zsh
fi
