#!/usr/bin/env bash
VIMDIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"
AUTODIR="$VIMDIR/autoload"
BUNDLEDIR="$VIMDIR/bundle"

test -f  "$VIMRC" && /bin/mv "${VIMRC}" "${VIMRC}.bak"
test -x '/usr/bin/git' || { echo "This script requires git."; exit; }
test -d "$VIMDIR"    || mkdir "${VIMDIR}"
test -d "$AUTODIR"     || mkdir "${AUTODIR}"
test -d "$BUNDLEDIR"   || mkdir "${BUNDLEDIR}"

cd "${VIMDIR}/bundle"        || { echo "Cant access $VIMDIR"; exit; }


for bundle in tpope/{vim-pathogen,vim-git,vim-fugitive,vim-markdown} \
    godlygeek/tabular \
    altercation/vim-colors-solarized \
    elzr/vim-json \
    john2x/flatui.vim \
    bling/vim-airline \
    puppetlabs/puppet-syntax-vim \
    scrooloose/syntastic \
    vim-scripts/bufexplorer.zip
do
    git clone https://github.com/"$bundle".git
done

# Nothing happens without Pathogen
ln -sf "$BUNDLEDIR"/vim-pathogen/autoload/pathogen.vim "$AUTODIR"/

cd $HOME
cp ./myvimrc $HOME/.vimrc

# https://github.com/tpope/{vim-pathogen,vim-git,vim-fugitive,vim-markdown} 
# https://github.com/godlygeek/tabular
# https://github.com/altercation/vim-colors-solarized
# https://github.com/elzr/vim-json
# https://github.com/john2x/flatui.vim
# https://github.com/bling/vim-airline
# https://github.com/puppetlabs/puppet-syntax-vim
# https://github.com/scrooloose/syntastic
# https://github.com/vim-scripts/bufexplorer.zip
