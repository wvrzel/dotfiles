#!/bin/sh

export CONF_SRC=`pwd`
cd ~

# Backup & link files
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

# Install zsh?
sudo apt-get update
s=$(which zsh)
if [ ${#s} -eq 0 ]
then
    read -r -p "zsh installieren? [y/N] " response
    case $response in
        [yY][eE][sS]|[yY]) 
            sudo apt-get install -y zsh
            chsh -s $(which zsh)
            ;;
        *)
            ;;
    esac
else
    chsh -s $s
fi

# Install oh-my-zsh
if which zsh > /dev/null && [ ! -e .oh-my-zsh ]
then
    git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
    wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
    mv bullet-train.zsh-theme .oh-my-zsh/themes
fi

# Execute vim & update plugins
vim +PluginUpdate .gitconfig
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd ~

# Run zsh
[ $0 != $(which zsh) ] && zsh
