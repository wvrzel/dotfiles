"
"
" +---------------------------------------------------------------------------+
" |                              mpalms .vimrc                                |
" +---------------------------------------------------------------------------+
"
"

" +---------------------------------------------------------------------------+
" |                                 Plugins                                   |
" +---------------------------------------------------------------------------+
set nocompatible " gets rid of all the crap that Vim does to be vi compatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " vundle
" Plugin 'mileszs/ack.vim' " Ack plugin
" Plugin 'vim-scripts/a.vim' " switch between header & source file
" Plugin 'sjl/gundo.vim' " undo tree
" Plugin 'vim-scripts/hexman.vim' " Hexeditor with xxd
" Plugin 'scrooloose/nerdcommenter' " Comment shortcuts
" Plugin 'scrooloose/nerdtree' " File browser
" Plugin 'mhinz/vim-rfc' " rfc querieing <------------- buggy?
" Plugin 'vim-scripts/rfc-syntax' " rfc syntax highlight
Plugin 'jeetsukumaran/vim-markology' " Zeigt Markierungen an
" Plugin 'msanders/snipmate.vim' "
Plugin 'rstacruz/sparkup' " Easily write HTML
" Plugin 'majutsushi/tagbar' " Source Code browser
Plugin 'easymotion/vim-easymotion' " Move faster
" Plugin 'tpope/vim-repeat' " enable repeating supported plugin maps with . <--- why should I want this?
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/YankRing.vim' "
" Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-easytags' " Automaticaly create tag files
Plugin 'xolox/vim-misc'     " Additional Plugin needed
Plugin 'bronson/vim-trailing-whitespace' " Highlightes trailing whitespaces
" Plugin 'embear/vim-localvimrc'
Plugin 'aperezdc/vim-template' " Templates
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-obsession' " For tmux ressurect
Plugin 'tmux-plugins/vim-tmux-focus-events' " restore focus events in tmux
Plugin 'christoomey/vim-tmux-navigator' " you know what it is
" Plugin 'epeli/slimux' " send lines of code to tmux panes
Plugin 'chrisbra/Recover.vim' " swap file diff recovery
Plugin 'tpope/vim-fugitive' " Git
Plugin 'Chiel92/vim-autoformat' " beautifier :Autoformat
Plugin 'powerman/vim-plugin-AnsiEsc' " color escape sequences
" Plugin 'vimwiki/vimwiki' " vim wiki
" Plugin 'tbabej/taskwiki' " vim wiki taskwarrior

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

packadd! matchit " extended % matching for Latex & HTML




" +---------------------------------------------------------------------------+
" |                               Basic Stuff                                 |
" +---------------------------------------------------------------------------+

set modelines=0 " prevents some security exploits

" Change leader-key
let mapleader = ","

" ESC alternative jk
inoremap jk <ESC>

" Syntax
syntax enable
colorscheme louver

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
set ruler " line numbers
set backspace=indent,eol,start
set laststatus=2
set relativenumber "relative linenumbers
set undofile
set updatetime=1000

" Handle long lines
set wrap
set textwidth=79
set formatoptions=tcqn1r
set colorcolumn=80

" Invisible chars
set list
set listchars=tab:▸\ ,eol:$

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Searching / Moving
set ignorecase
set smartcase
set incsearch " Highlight search results while typing
set showmatch
set hlsearch
" nnoremap <leader><space> :noh<cr> " <--------- removes highlighting generally. Irrelevant?

    " Quickly disable search highlight
nnoremap <leader>n :nohls<cr>

    " Find next line with content in column
nnoremap gU ?\%<C-R>=virtcol(".")<CR>v\S<CR>
nnoremap gD /\%<C-R>=virtcol(".")<CR>v\S<CR>



" easy-align
    " start interactive EasyAlign in visual mode (e. g. vipga)
xmap ga <Plug>(EasyAlign)
    " start interactive EasyAlign for a motion/text object (e. g. gaip)
nmap ga <Plug>(EasyAlign)






" Help in vertical split
cnoreabbrev H vert h





" Help to avoid arrow keys in normal mode
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>




" yankring history file
let g:yankring_history_dir = '$HOME/.vim'



" Disable arrow-keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>


" line up / line down <------ irrelevant?
"nnoremap j gj
"nnoremap k gk





" fix whitespace
nnoremap <leader>f :FixWhitespace<CR>






" Quick-edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" Special file mappings <------- irrelevant?
"inoremap <buffer> {<CR> {<CR>}<ESC>ko
"inoremap <buffer> "" ""<ESC>i
"inoremap <buffer> '' ''<ESC>i


" Switch between the last two files <------ have I ever used this?
"nnoremap <leader><leader> <c-^>


" +---------------------------------------------------------------------------+
" |                   Programming language specific stuff                     |
" +---------------------------------------------------------------------------+

" Define include path
let &path.="src/include,/usr/include/AL,"

" Make path
set makeprg=make\ -C\ ../build

"""""""" Java """"""""

" Change . to / in include path (for Java)
set includeexpr=substitute(v:fname,'\\.','/','g')


"""""""   C   """"""""

    " Quick make
nnoremap <leader>m :make!<cr>

    " Debugging
let g:pyclewn_args="--gdb=async --window=top --maxlines=10000 --background=Cyan,Green,Magenta"
let pyclewn_file_cmd=""
nnoremap <leader>gdb :Pyclewn gdb<CR>:Cmapkeys<CR>:Cinferiortty<CR>:execute pyclewn_file_cmd<CR>
nnoremap <leader>pdb :Pyclewn pdb %:p<CR>:Cmapkeys<CR>:Cinferiortty<CR>:execute pyclewn_file_cmd<CR>
nnoremap <leader>egdb :Cexitclewn<CR>:Cunmapkeys<CR>
nnoremap <leader>epdb :Cexitclewn<CR>:Cunmapkeys<CR>


""""""" Latex """""""

au BufNewFile,BufRead *.tex set filetype=tex
au FileType tex inoremap \align \begin{align*}<CR><BS>\end{align*}<ESC>O

" format paragraph
nnoremap <leader><CR> ?<Bslash>v(^<Bslash><Bslash><bar>^$<bar><Bslash><Bslash><Bslash><Bslash>)<CR>wV/<Bslash>v(^<Bslash><Bslash><bar>^$<bar><Bslash><Bslash><Bslash><Bslash>)<CR>bJVgq<CR>k




    " Quickly split window " <--------- when have I last used this?
"nnoremap <leader>w :vnew<CR>

    " Paste stuff
nmap <leader> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction





nnoremap <Leader>s :SlimuxREPLSendLine<CR>
vnoremap <Leader>s :SlimuxREPLSendSelection<CR>
nnoremap <Leader>a :SlimuxSendKeys C-c ' ' Up Enter<CR>
nnoremap <Leader>k :SlimuxSendKeysLast<CR>

" local vimrc persistent <----------- not needed right now
"let g:localvimrc_persistent=2


" +---------------------------------------------------------------------------+
" |                          Tabs & Tab navigation                            |
" +---------------------------------------------------------------------------+

" Tabline
set tabline=%!MyTabLine()
function! MyTabLine()
  let s = '' " complete tabline goes here
  " loop through each tab page
  for t in range(tabpagenr('$'))
    " select the highlighting for the buffer names
    if t + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " empty space
    let s .= ' '
    " set the tab page number (for mouse clicks)
    let s .= '%' . (t + 1) . 'T'
    " set page number string
    let s .= t + 1 . ' '
    " get buffer names and statuses
    let n = ''  "temp string for buffer names while we loop and check buftype
    let m = 0 " &modified counter
    let bc = len(tabpagebuflist(t + 1))  "counter to avoid last ' '
    " loop through each buffer in a tab
    for b in tabpagebuflist(t + 1)
      " buffer types: quickfix gets a [Q], help gets [H]{base fname}
      " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
      if getbufvar( b, "&buftype" ) == 'help'
        let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
      elseif getbufvar( b, "&buftype" ) == 'quickfix'
        let n .= '[Q]'
      else
        let n .= pathshorten(bufname(b))
        "let n .= bufname(b)
      endif
      " check and ++ tab's &modified count
      if getbufvar( b, "&modified" )
        let m += 1
      endif
      " no final ' ' added...formatting looks better done later
      if bc > 1
        let n .= ' '
      endif
      let bc -= 1
    endfor
    " add modified label [n+] where n pages in tab are modified
    if m > 0
      "let s .= '[' . m . '+]'
      let s.= '+ '
    endif
    " add buffer names
    if n == ''
      let s .= '[No Name]'
    else
      let s .= n
    endif
    " switch to no underlining and add final space to buffer list
    "let s .= '%#TabLineSel#' . ' '
    let s .= ' '
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'
  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999XX'
  endif
  return s
endfunction

" Navigate tabs
nnoremap H gT
nnoremap L gt
