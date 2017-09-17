" Use vim mode, not vi-compatible
set nocompatible

filetype off

" override the terminal colors and force 256 color mode
set t_Co=256
" Found this here:
" http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" Add your bundles here
" Look and Feel
Plugin 'altercation/vim-colors-solarized'
Plugin 'john2x/flatui.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Syntax and file type
Plugin 'w0rp/ale'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'vim-scripts/gnupg.vim'
" Git Shit
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
" NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'vim-scripts/bufexplorer.zip'
" Misc
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
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
" let mapleader = ","

" Remove .netrwhist files
let g:netrw_dirhistmax = 0

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

" Check to see if we're using OSX by looking for sw_vers
if strlen(system("/usr/bin/which sw_vers > /dev/null 2>&1; echo $?")) == 17
  set background=light
  colorscheme peaksea
  hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred guifg=white
  let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
else
  set background=dark
  " colorscheme gentooish
  " colorscheme wombat_eclm
  colors github
  let g:ale_statusline_format = ['XX %d', '!! %d', '⬥ ok']
endif

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

" Set airline theme and font
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1

" Syntastic configs
" let g:syntastic_puppet_puppetlint_args = "--no-80chars-check"
" let g:syntastic_check_on_open=1
" let g:syntastic_python_flake8_args = "--ignore=E121,E123,E126,E226,E24,E704,E501"
" let g:syntastic_python_flake8_args="--ignore=E401,E501,E701,E121,E123,E126,E133,E226,E241,E242,E704,W503"
"
" w0pr/ale tweaks - https://github.com/w0rp/ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_statusline_format = ['XX %d', '!! %d', '⬥ ok']
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '--'

" Highlight the 81st column of a line so we know when we go over 81 chars in a
" line. Found via Damian Conway's vim talk
" 2017/09/10 - This now causes issues with trailing spaces
" https://vi.stackexchange.com/questions/10597/trailing-spaces-when-copying-text-from-vim-session-in-one-server-to-vim-session
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v', 100)

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

" From http://blog.sanctum.geek.nz/lazier-tab-completion/
" Ignore case in file name completion
if exists("&wildignorecase")
set wildignorecase
endif

" From http://bitbucket.org/sjl/dotfiles/overview
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

" Show Hidden Chars
" I love/hate these. Be careful: when you turn them on, they show up in
" cut/paste operations.
"
" set list " Shows certain hidden chars
" set listchars=eol:¬,tab:▶-,trail:~,extends:>,precedes:<
"  hi NonText term=reverse term=bold ctermfg=lightgrey" Makes Trailing brightred
"  hi SpecialKey ctermfg=lightgrey " Makes Leading darkgray
""" End Hidden Chars

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
"
" let g:nerdtree_tabs_open_on_console_startup = 1
