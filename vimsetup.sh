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
test -f  "$VIMRC" && /bin/mv "${VIMRC}" "${VIMRC}.bak"
test -f "$VIMDIR" && /bin/mv "${VIMDIR}" "${VIMDIR}.bak"
ln -s $HERE $HOME/.vim
ln -s $HERE/vimrc $HOME/.vimrc
mkdir $VIMDIR/autoload
curl -fLo ${VIMDIR}/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
