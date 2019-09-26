#!/usr/bin/env bash
bundle=$HOME/.vim/bundle
colors=$HOME/.vim/colors
backup=$HOME/.vim/backup
if [ ! -d $bundle ]; then
  mkdir $bundle
  git clone https://github.com/VundleVim/Vundle.vim.git $bundle/Vundle.vim 
	if [ ! -d $colors ]; then
	  mkdir $colors
	  cp colors/* $colors 
	fi
fi
if [ ! -d $backup ]; then
  mkdir $backup
fi

cp vimrc ~/.vimrc
vim +PluginInstall +GoInstallBinaries +qall 
