#!/bin/sh

export CONF_SRC=`pwd`
cd ~

timestamp=$(date +%s)
for f in .bashrc .bash_aliases .gitconfig .gitignore .gitignore .taskrc .vim .vimrc .zshrc
do
    dst=$(readlink $f)
    if [ -e $f -a "$dst" != "dotfiles/$f" ]
    then
        echo $dst,$f
        mv $f $f.$timestamp.backup
    fi
    ln -fs dotfiles/$f $f
done

if [ ! -e .vim/bundle/Vundle.vim ]
then
    mkdir .vim/bundle
    mkdir .vim/bundle/Vundle.vim
    git clone https://github.com/VundleVim/Vundle.vim .vim/bundle/Vundle.vim
fi

grep "[user]" .gitconfig > /dev/null || (
    echo >> .gitconfig
    echo "[user]" >> .gitconfig
    echo "    name = " >> .gitconfig
    echo "    email = " >> .gitconfig
    )
vim +PluginUpdate .gitconfig
