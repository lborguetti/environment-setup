#!/bin/sh

set -e

git clone https://github.com/VundleVim/Vundle.vim .vim/bundle/Vundle.vim
git clone https://github.com/lborguetti/dotnash .nash
git clone https://github.com/NeowayLabs/nashcomplete .nash/lib/nashcomplete

args="bin
.fonts
.vim
.vimrc
.xinitrc
.Xmodmap
.nash"

for arg in $args; do
    rm -rf $HOME/$arg
    echo "ln -s $(pwd)/$arg $HOME/$arg ..."
    ln -s $(pwd)/$arg $HOME/$arg
done

echo "vim +PluginInstall +qall ..."
vim +PluginInstall +qall
