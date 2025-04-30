#!/usr/bin/bash

dnf install\
	stow\
	nvim\
	alacritty\
	tmux\
	

git clone git@github.com:ebajec/nvim-config.git ./nvim/.config/nvim

stow
