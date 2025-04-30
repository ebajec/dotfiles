#!/usr/bin/bash

dnf install\
	stow\
	nvim\
	alacritty\
	tmux\

bash ./scripts/nvim-setup.sh
bash ./scripts/tmux-setup.sh

stow\
	--adopt\
	-t $HOME\
	home\
	alacritty\
	nvim\
	tmux\
	zsh\
