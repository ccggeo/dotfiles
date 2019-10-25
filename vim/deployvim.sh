#!/usr/bin/env bash
bundle=$HOME/.vim/bundle
colors=$HOME/.vim/colors
backup=$HOME/.vim/backup
nvim=$HOME/.config/nvim
sudo apt install neovim exuberant-ctags -y

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

if [ ! -d $nvim ]; then
  mkdir -p $nvim
  cp init.vim $nvim
fi

cp vimrc ~/.vimrc
vim +PluginInstall +GoInstallBinaries +qall 
