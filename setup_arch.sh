#!/bin/sh

export CONF_SRC=`pwd`
cd ~

sudo pacman -Syy # update package databases
sudo pacman -S git tmux gvim zsh awesome-terminal-fonts cmake nodejs npm fortune-mod wget cowsay
chsh -s $(which zsh)

# Backup & link files
timestamp=$(date +%s)
for f in .bashrc .bash_aliases .gitconfig .gitignore .gitignore .taskrc .tmux .tmux.conf .vim .vimrc .zshrc
do
    dst=$(readlink $f)
    if [ -e $f -a "$dst" != "$CONF_SRC/$f" ]
    then
        echo $dst,$f
        mv $f $f.$timestamp.backup
    fi
    ln -fs $CONF_SRC/$f $f
done

# Install Vundle
if [ ! -e .vim/bundle/Vundle.vim ]
then
    mkdir .vim/bundle
    mkdir .vim/bundle/Vundle.vim
    git clone https://github.com/VundleVim/Vundle.vim .vim/bundle/Vundle.vim
fi

# Config git user
grep "[user]" .gitconfig > /dev/null || (
    echo >> .gitconfig
    echo "[user]" >> .gitconfig
    echo "    name = " >> .gitconfig
    echo "    email = " >> .gitconfig
)

# Install oh-my-zsh
if which zsh > /dev/null && [ ! -e .oh-my-zsh ]
then
    git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
    wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
    mv bullet-train.zsh-theme .oh-my-zsh/themes
fi

# Execute vim & update plugins
vim +PluginUpdate .gitconfig
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer --ts-completer
cd ~

# Run zsh
[ $0 != $(which zsh) ] && zsh
