#!/bin/sh

export CONF_SRC=`pwd`
cd ~

mv .bashrc .bashrc.original && ln -fs dotfiles/.bashrc .bashrc
mv .bash_aliases .bash_aliases.original && ln -fs dotfiles/.bash_aliases .bash_aliases
mv .vim .vim.original && ln -fs dotfiles/.vim .vim
mv .vimrc .vimrc.original && ln -fs dotfiles/.vimrc .vimrc
