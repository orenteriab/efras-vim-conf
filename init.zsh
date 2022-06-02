#!/usr/bin/env zsh

VIM_START="$HOME/.vim/pack/vendor/start"

echo "Checking if $VIM_START exists"

if [ ! -d $VIM_START ]; then
	echo "You don't have a start at $VIM_START. I'm creating it for you."
	mkdir -p $VIM_START
else
	echo "We found your VIM's vendor start."
fi
