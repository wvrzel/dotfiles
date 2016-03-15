#!/bin/sh

export CONF_SRC=`pwd`
cd ~

mv .bashrc .bashrc.original; ln -fs dotfiles/.bashrc .bashrc
mv .bash_aliases .bash_aliases.original; ln -fs dotfiles/.bash_aliases .bash_aliases
mv .gitconfig .gitconfig.original; ln -fs dotfiles/.gitconfig .gitconfig
mv .gitignore .gitignore.original; ln -fs dotfiles/.gitignore .gitignore
mv .gitignore .gitignore.original; ln -fs dotfiles/.gitignore .gitignore
mv .taskrc .taskrc.original; ln -fs dotfiles/.taskrc .taskrc
mv .vim .vim.original; ln -fs dotfiles/.vim .vim
mv .vimrc .vimrc.original; ln -fs dotfiles/.vimrc .vimrc
mv .zshrc .zshrc.original; ln -fs dotfiles/.zshrc .zshrc
