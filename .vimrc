set nocompatible " gets rid of all the crap that Vim does to be vi compatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " vundle
Plugin 'mileszs/ack.vim' " Ack plugin
Plugin 'vim-scripts/a.vim' " switch between header & source file
Plugin 'sjl/gundo.vim' " undo tree
Plugin 'vim-scripts/hexman.vim' " Hexeditor with xxd
Plugin 'vim-scripts/matchit.zip' " extended % matching for Latex & HTML
Plugin 'scrooloose/nerdcommenter' " Comment shortcuts
Plugin 'scrooloose/nerdtree' " File browser
Plugin 'mhinz/vim-rfc' " rfc querieing
Plugin 'vim-scripts/rfc-syntax' " rfc syntax highlight
"Plugin 'vim-scripts/ShowMarks' " Zeigt Markierungen an
Plugin 'msanders/snipmate.vim' " 
Plugin 'tristen/vim-sparkup' " Easily write HTML
Plugin 'taglist.vim' " Source Code browser
Plugin 'easymotion/vim-easymotion' " Move faster
Plugin 'tpope/vim-repeat' " enable repeating supported plugin maps with .
Plugin 'tpope/vim-surround' " 
Plugin 'vim-scripts/YankRing.vim' " 
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-easytags' " Automaticaly create tag files
Plugin 'xolox/vim-misc' " Additional Plugin needed
Plugin 'bronson/vim-trailing-whitespace' " Highlightes trailing whitespaces
Plugin 'embear/vim-localvimrc'
Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

set modelines=0 " prevents some security exploits

" Tab options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Other options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Define include path
let &path.="src/include,/usr/include/AL,"

" Make path
set makeprg=make\ -C\ ../build

" Change . to / in include path (for Java)
set includeexpr=substitute(v:fname,'\\.','/','g')

" Change leader-key
let mapleader = ","

" Leader-mappings
    " Quick make
nnoremap <leader>m :make!<cr>
    " Disable search highlight
nnoremap <leader>n :nohls<cr>
    " Quick-edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

    " Quickly split window
nnoremap <leader>w :vnew<CR>

    " Linebreak at 80 chars
nnoremap <leader><CR> 080lF r<CR>

    " Paste stuff
nmap <leader> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction


" Some additional key-mappings
nnoremap ; :

inoremap jk <ESC>

" Special file mappings
    " c
inoremap <buffer> {<CR> {<CR>}<ESC>ko
inoremap <buffer> "" ""<ESC>i
inoremap <buffer> '' ''<ESC>i

" Searching / Moving
set ignorecase
set smartcase
set incsearch " Highlight search results while typing
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" Invisible chars
set list
set listchars=tab:▸\ ,eol:$

" Disable arrow-keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Save on loosing focus
au FocusLost * :wa

" Syntax
syntax enable
colorscheme louver

" Debugging
let g:pyclewn_args="--gdb=async --window=top --maxlines=10000 --background=Cyan,Green,Magenta"
let pyclewn_file_cmd=""
nnoremap <leader>gdb :Pyclewn<CR>:Cmapkeys<CR>:Cinferiortty<CR>:execute pyclewn_file_cmd<CR>
nnoremap <leader>egdb :Cexitclewn<CR>:Cunmapkeys<CR>

" easy-align
    " start interactive EasyAlign in visual mode (e. g. vipga)
xmap ga <Plug>(EasyAlign)
    " start interactive EasyAlign for a motion/text object (e. g. gaip)
nmap ga <Plug>(EasyAlign)
