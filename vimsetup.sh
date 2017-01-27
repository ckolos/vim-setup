#!/usr/bin/env bash
HERE=$PWD
VIMDIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"
BUNDLEDIR="$VIMDIR/bundle"

if echo $HERE | grep -q vim-setup; then
  :
else
  HERE="$HERE/vim-setup"
fi

cd $HOME
test -f  "$VIMRC" && echo /bin/mv "${VIMRC}" "${VIMRC}.bak"
test -f "$VIMDIR" && echo /bin/mv "${VIMDIR}" "${VIMDIR}.bak"
echo ln -s $HERE $HOME/.vim
echo ln -s $HERE/vimrc $HOME/.vimrc
