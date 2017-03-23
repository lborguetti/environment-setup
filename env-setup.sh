#!/bin/sh

set -e

if [ ! -d .vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim .vim/bundle/Vundle.vim
fi
if [ ! -d .nash ]; then
    git clone https://github.com/lborguetti/dotnash .nash
fi
if [ ! -d .nash/lib/nashcomplete ]; then
    git clone https://github.com/NeowayLabs/nashcomplete .nash/lib/nashcomplete
fi

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
