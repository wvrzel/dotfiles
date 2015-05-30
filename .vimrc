filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible " gets rid of all the crap that Vim does to be vi compatible

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

" Change . to / in include path (for Java)
set includeexpr=substitute(v:fname,'\\.','/','g')

" Fix make
set makeprg=make\ -C\ ../Debug\ -j9

" Change leader-key
let mapleader = ","

" Leader-mappings
    " Quick make
nnoremap <leader>m :make!<cr>
    " Disable search highlight
nnoremap <leader>n :nohls<cr>
    " Quick-edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>36gg
nnoremap <leader>sv :source $MYVIMRC<cr>

    " Quickly split window
nnoremap <leader>w <C-w>v<C-w>l

    " Linebreak at 80 chars
nnoremap <leader><CR> 080lF r<CR>

" Some additional key-mappings
nnoremap ; :

inoremap jk <ESC>
inoremap <ESC> <nop>
vnoremap jk <ESC>
vnoremap <ESC> <nop>

" Special file mappings
    " c
inoremap <buffer> {<CR> {<CR>}<ESC>ko
inoremap <buffer> "" ""<ESC>i
inoremap <buffer> '' ''<ESC>i

" Searching / Moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault " Search & replace in the whole line. For the other thing append g
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
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Save on loosing focus
au FocusLost * :wa

" Syntax
syntax enable
colorscheme louver
