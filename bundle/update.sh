#!/bin/bash
set -e
for dir in $(find $HOME/.vim/bundle/ -maxdepth 1 -type d | grep -v "$HOME/.vim/bundle/$")
  do
      cd $dir
      echo "Updating: $dir"
      git pull
      cd $HOME
done
