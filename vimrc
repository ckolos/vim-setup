" override the terminal colors and force 256 color mode
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

" clearing uses the current background color
set t_ut=

" turn on syntax highlighting
syntax enable
" used to trigger the FileType event
" used to set the syntax highlighting, set options, etc
filetype on
filetype indent on
filetype plugin on
"
" Change leader to ,
let mapleader = ","

" allow backspace to remove indent,eol, and start of doc
set backspace=2

" Copy the structure of the existing lines indent when autoindenting a new line
set copyindent

" show column indicator; usually, I keep this off and set it as needed
" set cursorcolumn

" Highlight the screen line of the cursor with CursorLine
set cursorline

" Expand tabs into spaces; I dislike tabs. If I need one, CTRL-V <TAB>
set expandtab

" Ignore case in searches
set ignorecase

" Incremental search = on
set incsearch

" Insert two spaces after a '.', '?' and '!' with a join command
set joinspaces

" Always show status line
set laststatus=2

" If 'modeline' is on 'modelines' gives the number of lines that is
" checked for set commands.
set modeline
set modelines=3

" Don't create backups when overwriting a file
set nobackup

" Use vim mode, not vi-compatible
set nocompatible

" Don't use a swap file
set noswapfile

" no, really, don't make a backup of a file; even when writing over it.
set nowb

" turn on line-numbering
set number

" always tell me how many lines were changed when running s/g/ etc.
set report=0

" show me the current relative position in the file in my status line
set ruler

" Number of spaces to use for each auto-indent
set shiftwidth=2

" Show the partial command being run at the bottom of the screen
set showcmd

" Highlight matches of search operations
set showmatch

" Show the current mode of operation APPEND/INSERT/VISUAL etc
set showmode

" insert indentation auto-magically when a c-like word is used; usually
" doesn't work as expected for me.
" set smartindent

" Number of spaces per tab character when editing
" can be overridden by the filetype
set softtabstop=2

" when splitting, set the new window under the current window
set splitbelow

" Number of spaces per tab when not editing; i.e. how does a tab 'look'
set tabstop=2

" change the title of the current terminal to the current edited file when
" editing
set title

" Flash the screen, no beep.
set visualbell


" Use a menu for wild mode
set wildmenu

" Character you have to type to start wildcard expansion in the
" command-line, as specified with 'wildmode'.
set wildchar=<TAB>

" Turn on wildcard mode
set wildmode=list:longest,full

" wrap the file when stepping through search matches
set wrapscan

" Set color options based on gui running; I don't normally use the gui anymore
" if has('gui_running')
"     set background=light
"     colorscheme borland
" else
"set background=dark
" 
" Tomorrow-Night ftw.
colorscheme Tomorrow-Night
" endif

" Some abbreviations
iab YDATE <TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab CCK  <TAB>Chris Kolosiwsky
iab CLM <TAB>Last Modified:<TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab CMB <TAB>Modified By:<TAB>Chris Kolosiwsky<CR>
iab HEA #<TAB>File: <C-R>bufname("%")<CR><CR>#<CR>#<TAB>Chris Kolosiwsky<CR><TAB>#Last Modified:<TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>#<TAB>License: GNU Public License (http://www.gnu.org/copyleft/gpl.html)
"
" Some useful mapping to make search results appear in the middle of the
" screen.
" (n)map - normal mode map - only applies in normal mode
nmap n nmzz.`z
nmap N Nmzz.`z
nmap * *mzz.`z
nmap # #mzz.`z
nmap g* g*mzz.`z
nmap g# g#mzz.`z
noremap \y "+y
noremap \Y "+Y
noremap \p "+p

" Completion (CTRL-N/P)
if has("unix")
    set complete=.,w,b,u,t,i,k
    set dictionary=/usr/share/dict/words
else
    set complete=.,w,b,u,t,i
endif

" if using mutt to compose mail, set filetype to mail
au BufRead /tmp/mutt*
  \ set filetype=mail

" if we're editing json, be sure to set the filetype to json
au BufRead,BufNewFile *.json
  \ set filetype=json

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
    \ set filetype=puppet

au BufRead,BufNewFile *_spec.rb
    \ nmap <F8> :!rspec --color %<CR>

" found this stuff on http://www.terminally-incoherent.com
" toggle paste setting on insert with F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Turn line-numbers off/on with F5/6
noremap <F5> <ESC>:set nonumber<CR>
noremap <F6> <ESC>:set number<CR>

" JSON Filetype setting - needed for the json vundle
let g:vim_json_syntax_conceal = 0

" Set airline theme
let g:airline_theme="luna"


" Puppet Syntax overrides for syntastic vundle
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

"" From http://blog.sanctum.geek.nz/lazier-tab-completion/
" Ignore case in file name completion
if exists("&wildignorecase")
set wildignorecase
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
" I love/hate these. Be careful: when you turn them on, they show up in
" cut/paste operations.
"
" set list " Shows certain hidden chars
" set listchars=eol:¬,tab:▶-,trail:~,extends:>,precedes:<
"  hi NonText term=reverse term=bold ctermfg=lightgrey" Makes Trailing brightred
"  hi SpecialKey ctermfg=lightgrey " Makes Leading darkgray
""" End Hidden Chars """ }}}
