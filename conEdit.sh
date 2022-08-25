#!/usr/bin/env bash
#               _       _     _           
# ___  ___ _ __(_)_ __ | |_  | |__  _   _ 
#/ __|/ __| '__| | '_ \| __| | '_ \| | | |
#\__ \ (__| |  | | |_) | |_  | |_) | |_| |
#|___/\___|_|  |_| .__/ \__| |_.__/ \__, |
#                |_|                |___/ 
# _                               _   
#| |__   __ _ _____ __ ___   __ _| |_ 
#| '_ \ / _` |_  / '_ ` _ \ / _` | __|
#| | | | (_| |/ /| | | | | | (_| | |_ 
#|_| |_|\__,_/___|_| |_| |_|\__,_|\__|
#
#Author: hazmat / (Timothy Chatman)
#Github: https://github.com/hazmat86
#This script allows pipes your config files into dmenu and allows for a quick and easy way to select the one you want to edit.

qtile="$HOME/.config/qtile/config.py"
neovim="$HOME/.config/nvim/init.vim"
emacs="$HOME/.config/emacs/init.el"
bash="$HOME/.bashrc"

choices=("Neovim"
	"Emacs"
	"Bash"
	"qTile"
	"exit"
	)
	
file=$(printf '%s\n' ${choices[@]} | dmenu -b)

if [ "$file" == "exit" ];
then
	exit 
elif [ "$file" == "Neovim" ];
then
	nvim $neovim
elif [ "$file" == "Emacs" ];
then
	nvim $emacs
elif [ "$file" == "Bash" ];
then
	nvim $bash
elif [ "$file" == "qTile" ];
then 
	nvim $qtile
fi

