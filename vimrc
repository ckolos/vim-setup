set t_Co=256
" Found this here:
" http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Add your bundles here
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'godlygeek/tabular'
Bundle 'elzr/vim-json'
Bundle 'john2x/flatui.vim'
Bundle 'bling/vim-airline'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/gnupg.vim'
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
set t_ut=
syntax enable
filetype on
filetype indent on
filetype plugin on
" set autoindent
set backspace=2
set copyindent
" set cursorcolumn
set cursorline
set expandtab
set ignorecase
set incsearch
set joinspaces
set laststatus=2
set modeline
set modelines=3
set nobackup
set nocompatible
set noswapfile
set nowb
set number
set report=0
set ruler
set shiftwidth=2
set showcmd
set showmatch
set showmode
" set smartindent
set softtabstop=2
set splitbelow
set tabstop=2
set title
set visualbell
set wildchar=<TAB>
set wildmode=list:longest,full
set wrapscan
" if has('gui_running')
"     set background=light
"     colorscheme borland
" else
set background=dark
colorscheme Tomorrow-Night
" endif


iab YDATE <TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab CCK  <TAB>Chris Kolosiwsky
iab CLM <TAB>Last Modified:<TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab CMB <TAB>Modified By:<TAB>Chris Kolosiwsky<CR>
iab HEA #<TAB>File: <C-R>=bufname("%")<CR><CR>#<CR>#<TAB>Chris Kolosiwsky<CR>#<TAB>Last Modified:<TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>#<TAB>License: GNU Public License (http://www.gnu.org/copyleft/gpl.html)
"
" I have no idea what these do
nmap n nmzz.`z
nmap N Nmzz.`z
nmap * *mzz.`z
nmap # #mzz.`z
nmap g* g*mzz.`z
nmap g# g#mzz.`z
noremap \y "+y
noremap \Y "+Y
noremap \p "+p

" where to look for word completion
if has("unix")
    set complete=.,w,b,u,t,i,k
    set dictionary=/usr/share/dict/words
else
    set complete=.,w,b,u,t,i
endif

au BufRead /tmp/mutt*
  \ set filetype=mail

au BufRead,BufNewFile *.json :silent filetype=json

" Set up puppet manifest and spec options
 au BufRead,BufNewFile *.pp
    \ set filetype=puppet

au BufRead,BufNewFile *_spec.rb
    \ nmap <F8> :!rspec --color %<CR>

" found this stuff on http://www.terminally-incoherent.com
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
noremap <F5> <ESC>:set nonumber<CR>
noremap <F6> <ESC>:set number<CR>

"JSON Filetype setting
let g:vim_json_syntax_conceal = 0

"Set airline theme
let g:airline_theme="luna"


" Puppet Syntax 
let g:syntastic_puppet_puppetlint_args = "--no-80chars-check"
let g:syntastic_check_on_open=1

" Highlight the 81st column of a line so we know when we go over 81 chars in a
" line. Found via Damian Conway's vim talk
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Inspired by https://github.com/tpope/vim-unimpaired "
" Sets paste on and set nopaste when leaving insert mode "
" using an autocommand "
nnoremap <silent> yo  :set paste<cr>o
nnoremap <silent> yO  :set paste<cr>O
nnoremap <silent> ao  :set paste<cr>o
nnoremap <silent> aO  :set paste<cr>O


" Disables paste mode when leaving insert mode
autocmd InsertLeave *
    \ if &paste == 1 |
    \     set nopaste |
    \ endif

" Use ctrl+{hjkl} to navigate windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Wildcard menu stuff 
set wildmenu " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.

"" From http://blog.sanctum.geek.nz/lazier-tab-completion/
if exists("&wildignorecase")
set wildignorecase " Ignore case in file name completion
endif

"" From http://bitbucket.org/sjl/dotfiles/overview
set wildignore+=.hg,.git,.svn " Version control
set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files
set wildignore+=*.DS_Store " OSX bullshit
set wildignore+=*.luac " Lua byte code
set wildignore+=migrations " Django migrations
set wildignore+=*.pyc " Python byte code
set wildignore+=*.orig " Merge resolution files

""" Show Hidden Chars """ {{{
" set list " Shows certain hidden chars
" set listchars=eol:¬,tab:▶-,trail:~,extends:>,precedes:<
"  hi NonText term=reverse term=bold ctermfg=lightgrey" Makes Trailing brightred
"  hi SpecialKey ctermfg=lightgrey " Makes Leading darkgray
""" End Hidden Chars """ }}}
