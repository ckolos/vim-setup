" Use vim mode, not vi-compatible
set nocompatible
filetype off
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
"
" Look and Feel
  " Plug 'Gabirel/molokai'
  " Plug 'chriskempson/vim-tomorrow-theme'
  " Plug 'danilo-augusto/vim-afterglow'
  " Plug 'doums/darcula'
  " Plug 'john2x/flatui.vim'
  " Plug 'icymind/NeoSolarized'
  " Plug 'itchyny/landscape.vim'
  " Plug 'pkukulak/idle'
  " Plug 'rakr/vim-one'
  " Plug 'srcery-colors/srcery-vim'
  " Plug 'vim-scripts/ibmedit.vim'
  " Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'
Plug 'SpaceVim/vim-material'
Plug 'adrian5/oceanic-next-vim'
Plug 'antlypls/vim-colors-codeschool'
Plug 'arcticicestudio/nord-vim'
Plug 'ckolos/blue-mood-vim'
Plug 'ckolos/onedark.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'jnurmine/zenburn'
Plug 'neutaaaaan/iosvkem'
Plug 'notpratheek/vim-luna'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'vim-scripts/wombat256.vim'
Plug 'tomasiser/vim-code-dark'

" Status line
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" Syntax and file type
" Plug 'dense-analysis/ale'
Plug 'elzr/vim-json'
Plug 'hashivim/vim-terraform'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/gnupg.vim'

" Git Shit
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
  " Plug 'tpope/vim-rhubarb'

" Misc
Plug 'chrisbra/NrrwRgn'
  " :NR  - Open the selected region in a new narrowed window
  " :NW  - Open the current visual window in a new narrowed window
  " :WR  - (In the narrowed window) write the changes back to the original buffer.
  " :NRV - Open the narrowed window for the region that was last visually selected.
  " :NUD - (In a unified diff) open the selected diff in 2 Narrowed windows
  " :NRP - Mark a region for a Multi narrowed window
  " :NRM - Create a new Multi narrowed window (after :NRP) - experimental!
  " :NRS - Enable Syncing the buffer content back (default on)
  " :NRN - Disable Syncing the buffer content back
  " :NRL - Reselect the last selected region and open it again in a narrowed window
  "
Plug 'ctrlpvim/ctrlp.vim'
  " Basic Usage
  " Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
  " Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
  " Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
  "
  " Check :help ctrlp-commands and :help ctrlp-extensions for other commands.
  " Once CtrlP is open:
  " Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
  " Press <c-f> and <c-b> to cycle between modes.
  " Press <c-d> to switch to filename only search instead of full path.
  " Press <c-r> to switch to regexp mode.
  " Use <c-j>, <c-k> or the arrow keys to navigate the result list.
  " Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
  " Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
  " Use <c-y> to create a new file and its parent directories.
  " Use <c-z> to mark/unmark multiple files and <c-o> to open them.
  " Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help.
  " Submit two or more dots .. to go up the directory tree by one or multiple levels.
  " End the input string with a colon : followed by a command to execute it on the opening file(s): Use :25 to jump to line 25. Use :diffthis when opening multiple files to run :diffthis on the first 4 files.
Plug 'easymotion/vim-easymotion'      " https://github.com/easymotion/vim-easymotion
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
  ":Files [PATH] 	Files (runs $FZF_DEFAULT_COMMAND if defined)
  ":GFiles [OPTS] 	Git files (git ls-files)
  ":GFiles? 	Git files (git status)
  ":Buffers 	Open buffers
  ":Colors 	Color schemes
  ":Ag [PATTERN] 	ag search result (ALT-A to select all, ALT-D to deselect all)
  ":Rg [PATTERN] 	rg search result (ALT-A to select all, ALT-D to deselect all)
  ":Lines [QUERY] 	Lines in loaded buffers
  ":BLines [QUERY] 	Lines in the current buffer
  ":Tags [QUERY] 	Tags in the project (ctags -R)
  ":BTags [QUERY] 	Tags in the current buffer
  ":Marks 	Marks
  ":Windows 	Windows
  ":Locate PATTERN 	locate command output
  ":History 	v:oldfiles and open buffers
  ":History: 	Command history
  ":History/ 	Search history
  ":Snippets 	Snippets (UltiSnips)
  ":Commits 	Git commits (requires fugitive.vim)
  ":BCommits 	Git commits for the current buffer
  ":Commands 	Commands
  ":Maps 	Normal mode mappings
  ":Helptags 	Help tags 1
  ":Filetypes 	File types
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mhinz/vim-startify'
Plug 'mg979/vim-visual-multi'      " https://github.com/mg979/vim-visual-multi
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" used to trigger the FileType event
" used to set the syntax highlighting, set options, etc
filetype on
"
" filetype indent on
filetype plugin on

" Indent based on filetype (if known)
filetype indent on

" override the terminal colors and force 256 color mode
if &term =~# 'rxvt-unicode-256color'
  set t_Co=256
  colorscheme wombat256mod
  highlight Comment cterm=italic gui=italic
else
  set termguicolors " 24-bit terminal
  let &t_8f = "[38;2;%lu;%lu;%lum"
  let &t_8b = "[48;2;%lu;%lu;%lum"
  colorscheme onedark  " monokai-phoenix and Ioskevm are also nice
  highlight Comment cterm=italic gui=italic
endif

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif
"
" Use a persistent undofile
set undodir=~/.vim/undodir

" clearing uses the current background color
set t_ut=

" turn on syntax highlighting
syntax enable

" Change leader to ,
let mapleader = ','

" allow backspace to remove indent,eol, and start of doc
set backspace=2

" Completion behaviour
set completeopt+=menuone  " Show menu even if there is only one item
set completeopt-=preview  " Disable the preview window

" Settings for popup menu
set pumheight=15  " Maximum number of items to show in popup menu
if exists("&pumblend")
    set pumblend=5  " Pesudo blend effect for popup menu
endif

" Copy the structure of the existing lines indent when autoindenting a new line
set copyindent

" show column indicator; usually, I keep this off and set it as needed
" set cursorcolumn

" Highlight the screen line of the cursor with CursorLine
set cursorline

" Expand tabs into spaces; I dislike tabs. If I need one, CTRL-V <TAB>
set expandtab

" Changing fillchars for folding, so there is no garbage charactes
set fillchars=fold:\ ,vert:\|

" The level we start to fold
set foldlevel=3

" Opem most folds by default
set foldlevelstart=5

" Set max nested folds
set foldnestmax=10

" Fold based on indent
set foldmethod=indent

" Use smartcase for searching
set ignorecase smartcase

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

" If we're using lightline (which we are), don't showmode
set noshowmode

" Don't use a swap file
set noswapfile

" no, really, don't make a backup of a file; even when writing over it.
set nowb

" turn off @$*&#$(*&# textwrap
set nowrap

" turn on line-numbering and relative line number
set number relativenumber

" always tell me how many lines were changed when running s/g/ etc.
set report=0

" Minimum lines to keep above and below cursor when scrolling
set scrolloff=3

" show me the current relative position in the file in my status line
"set ruler

"Align indent to next multiple value of shiftwidth. For its meaning,
" see http://tinyurl.com/y5n87a6m
set shiftround

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

" New windows will be below or to the right of the current window
" set splitbelow botright

" Always show the tabline
set showtabline=2

" Number of spaces per tab when not editing; i.e. how does a tab 'look'
set tabstop=2

" Turn off textwidth
set textwidth=0

" change the title of the current terminal to the current edited file when
" editing
set title

" Show hostname, full path of file and last-mod time on the window title.
" The meaning of the format str for strftime can be found in
" http://tinyurl.com/l9nuj4a. The function to get lastmod time is drawn from
" http://tinyurl.com/yxd23vo8
set title
set titlestring=
set titlestring+=%(%{hostname()}\ \ %)
set titlestring+=%(%{expand('%:p')}\ \ %)
set titlestring+=%{strftime('%Y-%m-%d\ %H:%M',getftime(expand('%')))}

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
if strlen(system("/usr/bin/which sw_vers")) == 17
  set background=dark
  " set background=light
  set rtp+=/usr/local/bin/fzf
  " TF Files in a different color
  " autocmd BufEnter *.tf* colorscheme Tomorrow-Night-Eighties
  autocmd BufEnter *.tf* colorscheme onedark
  hi CursorLine  cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred guifg=white
  let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
  let g:terraform_binary_path="$HOME/.asdf/shims/terraform"
else
  set background=dark
  autocmd BufEnter,BufNewFile *.tf* colorscheme torte
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
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
nnoremap <Space> za
vnoremap <Space> za

" Move visual selection
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

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

" found this stuff on http://www.terminally-incoherent.com
" toggle paste setting on insert with F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Turn line-numbers off/on with F5/6
noremap <F5> <ESC>:set nonumber<CR>
noremap <F6> <ESC>:set number<CR>

" Yank from current cursor position to the end of the line (make it
" consistent with the behavior of D, C)
nnoremap Y y$

" Reselect the text that has just been pasted
nnoremap <leader>v `[V`]

" Find and replace (like Sublime Text 3)
nnoremap <C-H> :%s/
xnoremap <C-H> :s/

" Easymotion maps
"
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" s{char}{char} to move to {char}{char}
nmap <Leader>S <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" FZF Keymaps
nnoremap <silent> <Leader>F :FZF<CR>
nnoremap <silent> <Leader>FB :Blines<CR>
nnoremap <silent> <Leader>FC :Commands<CR>
nnoremap <silent> <Leader>FF :Files<CR>
nnoremap <silent> <Leader>FH :History<CR>
nnoremap <silent> <Leader>FL :Lines<CR>
nnoremap <silent> <Leader>FN :FZFNeigh<CR>
nnoremap <silent> <Leader>FR :Rg<CR>

let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_conceal = 0

nnoremap <silent> <Leader>gc :call GutterClean()<CR>
nnoremap <silent> <Leader>gu :call Gutter()<CR>
nnoremap <silent> <Leader>gt :call GutterToggle()<CR>

" Decrease indent level in insert mode with shift+tab
inoremap <S-Tab> <ESC><<i

let g:EasyMotion_smartcase = 1
" Set for Hidden() functions below
let hiddens_are_shown = 0

" Indent Line color settings
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 0

" JSON Filetype setting - needed for the json vundle
let g:vim_json_syntax_conceal = 0

" Set airline theme and font
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 1

" w0pr/ale tweaks - https://github.com/w0rp/ale
let g:ale_echo_msg_error_str = 'Err'
let g:ale_echo_msg_warning_str = 'Warn'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = 'E!'
let g:ale_sign_warning = 'W.'

let g:ale_linters = {
      \   'python': ['flake8', 'yapf'],
      \}

let g:ale_fixers = {
      \   '*':      ['remove_trailing_lines', 'trim_whitespace'],
      \   'python': ['add_blank_lines_for_python_control_statements',
      \              'black', 'isort', 'trim_whitespace'],
      \}
set omnifunc=ale#completion#OmniFunc

" Yaml files in a different color
autocmd BufEnter *.yaml :call YamlEdit()
autocmd BufEnter *.yml :call YamlEdit()

" terraform fmt
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1

" Highlight the 81st column of a line so we know when we go over 81 chars in a
" line. Found via Damian Conway's vim talk
" https://vi.stackexchange.com/questions/10597/trailing-spaces-when-copying-text-from-vim-session-in-one-server-to-vim-session
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v', 100)

" IndentGuides settings
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=4

" Rainbow parentheses settings
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

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

" Use Esc+Arrow Keys to navigate windows
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l

" From http://blog.sanctum.geek.nz/lazier-tab-completion/
" Ignore case in file name completion
if exists("&wildignorecase")
  set wildignorecase
endif

" The way to show the result of substitution in real time for preview
if exists("&inccommand")
  set inccommand=nosplit
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

" let g:nerdtree_tabs_open_on_console_startup = 1
"
" Disable/Enable ALE with leader a
" nmap <silent> <Leader>a :ALEToggle<CR>
" Show cursorcolumn with leader c
" nmap <silent> <Leader>c :set cursorcolumn!<CR>
" Toggle GitGutter with leader g
nmap <silent> <Leader>g :GitGutterToggle<CR>
" Toggle IndentLines with leader i
nmap <silent> <Leader>i :IndentLinesToggle<cr>
" Show cursorcolumn with leader c
nmap <silent> <Leader>c :set cursorcolumn!<CR>
" Use leader-f to call :FZFNeigh
nmap <silent> <Leader><C-f> :FZFNeigh<CR>
" Use leader + C-g to call :GFiles
nmap <silent> <Leader><C-g> :GFiles<CR>
" Use leader-h to toggle hidden chars
nmap <silent> <Leader>h :call HiddenToggle()<CR>
" Poor-man's trailing white-space removal leader s
nmap <silent> <Leader>s :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" Open/close NERDTree Tabs with leader t
nmap <silent> <Leader>t :Vexplore<CR>
" Tabline movement
nmap <silent> <Leader>N :tabn<CR>
nmap <silent> <Leader>P :tabp<CR>

" Make netrw look/act like NERDTree
let g:netrw_dirhistmax = 0
"
" Remove banner
let g:netrw_banner = 0

" Wide list style (0 - thin+one file per line , 1 - long+file size, 2 - Wide, 3 - Tree
let g:netrw_liststyle = 1

" 1 - horiz split; 2 - Vert; 3 - New tab; 4 - pervious window
let g:netrw_browse_split = 3
"
" Size of resulting split
let g:netrw_winsize = 75

" let g:netrw_altv = 1
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left':  [ [ 'mode' ],
      \              ['paste', 'fullfilename', 'gitbranch' ],
      \              [ ' ', 'line', 'column','percent' ],
      \            ],
      \   'right': [ [ 'fileformat', 'fileencoding', 'filetype'],
      \              [ 'modified', 'readonly' ],
      \            ]
      \ },
      \ 'tab':  {
      \   'active':   [ 'tabnum', 'filename', 'modified' ],
      \   'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'fullfilename': 'FullFilename',
      \   'filename': 'LightlineFilename',
      \ },
      \ 'mode_map': {
      \   'n' : 'NOR',
      \   'i' : 'INS',
      \   'R' : 'REP',
      \   'v' : 'VIS',
      \   'V' : 'V-LINE',
      \   "\<C-v>": 'V-BLOCK',
      \   'c' : 'CHA',
      \   's' : 'SEL',
      \   'S' : 'SEL-LINE',
      \   "\<C-s>": 'SEL-BLOCK',
      \   't': 'T',
      \ },
    \ }

autocmd! User FzfStatusLine call <SID>fzf_statusline()
command! FZFNeigh call s:fzf_neighbouring_files()

let g:guttercleaned = 0


" Do not use smart case in command line mode,
" extracted from https://goo.gl/vCTYdK
if exists("##CmdLineEnter")
    augroup dynamic_smartcase
        autocmd!
        autocmd CmdLineEnter : set nosmartcase
        autocmd CmdLineLeave : set smartcase
    augroup END
endif

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

let g:tmuxline_preset = {
  \ 'a'    : '#S',
  \ 'c'    : ['#(whoami)', '#(uptime | cut -d " " -f 1,2,3)'],
  \ 'win'  : ['#I', '#W'],
  \ 'cwin' : ['#F#I', '#W'],
  \ 'x'    : '',
  \ 'y'    : '#(date)',
  \ 'z'    : '#H',
  \ 'options' : {'status-justify' : 'left'}}
"
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_theme = 'iceberg'
" FZF Stuff
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
  \     sort(map(split(globpath(&rtp, "colors/*.vim"), "\n"),
  \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')")),
  \   'sink':    'colo',
  \   'options': '+m --reverse',
  \   'left':    30
  \ })<CR>

nnoremap <silent> <Leader>C :call fzf#run({
  \   'source':
  \     sort(map(split(globpath(&rtp, "colors/*.vim"), "\n"),
  \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')")),
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

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

command! -bang -complete=dir -nargs=? LS
    \ call fzf#run(fzf#wrap({'source': 'ls', 'dir': <q-args>}, <bang>0))
"
" FullFilename function for lightline
function! FullFilename()
  return expand('%:p')
endfunction

function! GutterClean() abort
  let g:guttercleaned = 1
  :ALEDisable
  :GitGutterDisable
  :IndentLinesDisable
  set norelativenumber
  set nonumber
endfunction

function! Gutter() abort
  let g:noguttercleaned = 0
  :ALEEnable
  :GitGutterEnable
  :IndentLinesEnable
  set relativenumber
  set number
endfunction

function GutterToggle() abort
  if g:guttercleaned
     call Gutter()
  else
     call GutterClean()
  endif
endfunction

function! HideHidden() abort
  set nolist
  let g:hiddens_are_shown = 0
endfunction

function! HiddenToggle() abort
    if g:hiddens_are_shown
      call HideHidden()
    else
      call ShowHidden()
    endif
endfunction

function! ShowHidden() abort
  set listchars=eol:¬,tab:▶-,trail:~,extends:>,precedes:<
  " Makes Trailing lightgrey
  hi NonText term=reverse term=bold ctermfg=lightgrey
  " Makes Leading spaces lightgrey
  hi SpecialKey ctermfg=lightgrey
  set list
  let g:hiddens_are_shown = 1
endfunction

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

function! YamlEdit() abort
    set cursorcolumn
    ":colorscheme blue-mood
    :colorscheme oceanicnext
endfunction


if &term =~# 'rxvt-unicode-256color'
  set t_Co=256
  colorscheme wombat256mod
else
  set termguicolors " 24-bit terminal
  let &t_8f = "[38;2;%lu;%lu;%lum"
  let &t_8b = "[48;2;%lu;%lu;%lum"
  colorscheme onedark
endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" CocConfig
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
