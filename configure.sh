#!/usr/bin/bash

bash ./scripts/nvim-setup.sh
bash ./scripts/tmux-setup.sh
bash ./scripts/zsh-setup.sh

stow\
	--adopt\
	-t $HOME\
	home\
	alacritty\
	nvim\
	tmux\
	zsh\
