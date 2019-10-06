" Use vim mode, not vi-compatible
set nocompatible
filetype off
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
" Look and Feel
"Plug 'altercation/vim-colors-solarized'
Plug 'antlypls/vim-colors-codeschool'
"Plug 'baverman/vim-babymate256'
Plug 'bruschill/madeofcode'
"Plug 'cdaddr/gentooish.vim'
"Plug 'chriskempson/base16-vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ciaranm/inkpot'
"Plug 'desert256.vim'
"Plug 'durgaswaroop/vim-lunarized'
Plug 'itchyny/landscape.vim'
Plug 'itchyny/lightline.vim'
Plug 'jnurmine/zenburn'
Plug 'joedicastro/vim-github256'
Plug 'john2x/flatui.vim'
"Plug 'junegunn/seoul256.vim'
Plug 'marcopaganini/termschool-vim-theme'
Plug 'neutaaaaan/iosvkem'
Plug 'notpratheek/vim-luna'
Plug 'pkukulak/idle'
"Plug 'rainux/vim-desert-warm-256'
Plug 'reewr/vim-monokai-phoenix'
"Plug 'Siphalor/vim-atomified'
Plug 'tomasr/molokai'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Gentooish-II'
Plug 'vim-scripts/ibmedit.vim'
Plug 'vim-scripts/icansee.vim'
Plug 'vim-scripts/peaksea'
Plug 'vim-scripts/primary.vim'
Plug 'vim-scripts/wombat256.vim'
Plug 'w0ng/vim-hybrid'
"
" Syntax and file type
Plug 'elzr/vim-json'
Plug 'hashivim/vim-terraform'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/gnupg.vim'
Plug 'w0rp/ale'
"
" Git Shit
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-rhubarb'
"
" NerdTree
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
"Plug 'vim-scripts/bufexplorer.zip'
"
" Misc
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'Yggdroot/indentLine'
call plug#end()

" override the terminal colors and force 256 color mode
if &term =~# 'rxvt-unicode-256color'
  set t_Co=256
  colorscheme wombat256mod
else
  set termguicolors " 24-bit terminal
  let &t_8f = "[38;2;%lu;%lu;%lum"
  let &t_8b = "[48;2;%lu;%lu;%lum"
  "colorscheme monokai-phoenix
  colorscheme Iosvkem
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
" Change leader to \
let mapleader = ","

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

" Use smartcase for searching
set smartcase

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
" set showmode

" insert indentation auto-magically when a c-like word is used; usually
" doesn't work as expected for me.
" set smartindent

" Number of spaces per tab character when editing
" can be overridden by the filetype
set softtabstop=2

" when splitting, set the new window under the current window
set splitbelow

" Always show the tabline
set showtabline=2

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
  colorscheme github256
  hi CursorLine  cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred guifg=white
  let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
else
  set background=dark
  let g:ale_statusline_format = ['XX %d', '!! %d', '⬥ ok']
endif

" Some abbreviations
iab YDATE <TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab CCK  <TAB>Chris Kolosiwsky
iab CLM <TAB>Last Modified:<TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab CMB <TAB>Modified By:<TAB>Chris Kolosiwsky<CR>
iab HEA #<TAB>File: <C-R>bufname("%")<CR><CR>#<CR>#<TAB>Chris Kolosiwsky<CR><TAB>#Last Modified:<TAB><C-R>=strftime("%a %b %d %T %Z %Y")<CR>#<TAB>License: GNU Public License (http://www.gnu.org/copyleft/gpl.html)

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

" Use space to toggle folds
"
nnoremap <Space> za
vnoremap <Space> za

" (i)map - insertion mode maps
imap <TAB> <C-N>

" Completion (CTRL-N/P)
if has("unix")
    set complete=.,i,w,b,u,t,k
    set completeopt=longest,menuone,preview
    " Enter key will select the highlighted menu item
    inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
    inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

else
    set complete=.,i,w,b,u,t
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
" let g:airline_theme="luna"
" let g:airline_powerline_fonts = 1

" Syntastic configs
" let g:syntastic_puppet_puppetlint_args = "--no-80chars-check"
" let g:syntastic_check_on_open=1
" let g:syntastic_python_flake8_args = "--ignore=E121,E123,E126,E226,E24,E704,E501"
" let g:syntastic_python_flake8_args="--ignore=E401,E501,E701,E121,E123,E126,E133,E226,E241,E242,E704,W503"

" w0pr/ale tweaks - https://github.com/w0rp/ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" let g:ale_statusline_format = ['XX %d', '!! %d', '⬥ ok']
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '--'

" TF Files in a different color
autocmd BufEnter *.tf* colorscheme Tomorrow-Night-Eighties

" terraform fmt 
let g:terraform_fmt_on_save=1

" Highlight the 81st column of a line so we know when we go over 81 chars in a
" line. Found via Damian Conway's vim talk
" https://vi.stackexchange.com/questions/10597/trailing-spaces-when-copying-text-from-vim-session-in-one-server-to-vim-session
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v', 100)

" Inspired by https://github.com/tpope/vim-unimpaired "
" Sets paste on and set nopaste when leaving insert mode "
" using an autocommand "
nnoremap <silent> yo  :set paste<cr>o
nnoremap <silent> yO  :set paste<cr>O
nnoremap <silent> ao  :set paste<cr>o
nnoremap <silent> aO  :set paste<cr>O
nnoremap <silent> Ao  :set paste<cr>o
nnoremap <silent> AO  :set paste<cr>O

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

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with <leader>t
"
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" To have NERDTree always open on startup
" let g:nerdtree_tabs_open_on_console_startup = 1

" Disable/Enable ALE with leader d/e
nmap <silent> <leader>d :ALEToggle<CR>
nmap <silent> <leader>g :GitGutterToggle<CR>

" Poor-man's trailing white-space removal
nmap <silent> <leader>s :%s/[ ]\+$//<CR>

" Show cursorcolumn
nmap <silent> <leader>c :set cursorcolumn!<CR>

" Disable Yggdroot/indentline
nmap <silent> <leader>i :IndentLinesToggle<cr>


" :h g:lightline.colorscheme
let g:lightline = {
      \ 'colorscheme': 'OldHope',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Rename tabs to show tab number.
" (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            let s .= '%#TabNum#'
            let s .= i
            " let s .= '%*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[No Name]'
            endif
            let s .= ' ' . file . ' '
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    set showtabline=1
    highlight link TabNum Special
endif

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}
"
" FZF Stuff
"

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':    'colo',
\   'options': '+m --reverse',
\   'left':    30
\ })<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

function! s:fzf_neighbouring_files()
  let current_file =expand("%")
  let cwd = fnamemodify(current_file, ':p:h')
  let command = 'rg --files --no-follow  ' . cwd . ''

  call fzf#run({
        \ 'source': command,
        \ 'sink':   'e',
        \ 'options': '-m -x +s',
        \ 'window':  'enew' })
endfunction

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
command! FZFNeigh call s:fzf_neighbouring_files()
nnoremap <silent> <Leader>F :FZF<CR>
nnoremap <silent> <Leader>Ff :Files<CR>
nnoremap <silent> <Leader>Fr :Rg<CR>
nnoremap <silent> <Leader>FL :Lines<CR>
nnoremap <silent> <Leader>Fb :Blines<CR>
nnoremap <silent> <Leader>FH :History<CR>
nnoremap <silent> <Leader>Fh :History:<CR>
nnoremap <silent> <Leader>Fc :Commands<CR>
