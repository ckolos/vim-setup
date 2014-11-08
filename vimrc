call pathogen#infect()
set t_Co=256
set t_ut=
syntax enable
filetype on
filetype indent on
filetype plugin on
"set autoindent
set backspace=2
set copyindent
"set cursorcolumn
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
"set smartindent
set softtabstop=2
set splitbelow
set tabstop=2
set title
set visualbell
set wildchar=<TAB>
set wildmode=list:longest,full
set wrapscan

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

if has('gui_running')
    set background=light
    colorscheme borland
else
    set background=dark
    colorscheme Tomorrow-Night
endif

au BufRead /tmp/mutt* :silent set filetype=mail

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
"
" Disables paste mode when leaving insert mode
autocmd InsertLeave *
    \ if &paste == 1 |
        \     set nopaste |
            \ endif
