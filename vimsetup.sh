#!/usr/bin/env bash
VIMDIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"
BUNDLEDIR="$VIMDIR/bundle"

cd $HOME
test -f  "$VIMRC" && /bin/mv "${VIMRC}" "${VIMRC}.bak"
test -f "$VIMDIR" && /bin/mv "${VIMDIR}" "${VIMDIR}.bak"
ln -s $(dirname $0) $HOME/.vim
ln -s $(dirname $0)/vimrc $HOME/.vimrc
