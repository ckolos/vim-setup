#!/usr/bin/env bash
WHEREAMI="$PWD"
CHECKOUTDIR="$(dirname "$0")"
VIMDIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"

if [[ "$CHECKOUTDIR" == "." ]]; then # Running inside checkoutdir
  CHECKOUTDIR=${PWD}
  else 
    if [[ ! "$CHECKOUTDIR" =~ "$WHEREAMI" ]]; then # running one level up from checkdir
      CHECKOUTDIR="$PWD/$CHECKOUTDIR"
    fi
fi

cd "$HOME" || exit 1
test -f  "$VIMRC" && /bin/mv "${VIMRC}" "${VIMRC}.bak"
test -f "$VIMDIR" && /bin/mv "${VIMDIR}" "${VIMDIR}.bak"
ln -s "$CHECKOUTDIR" "$HOME/.vim"
ln -s "$CHECKOUTDIR/vimrc" "$HOME/.vimrc"
curl \
  --create-dirs \
  -fL \
  -o "${VIMDIR}/autoload/plug.vim" \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
