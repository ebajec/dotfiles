#!/bin/bash

if [ -d "$HOME/.oh-my-zsh" ]; then
  	echo "Oh My Zsh already installed"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if  [ -d "$ZSH_CUSTOM/plugins/zsh-vi-mode" ]; then
  	echo "zsh-vi-mode already installed"
else
  	echo "Installing zsh-vi-mode ..."
	git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
fi
