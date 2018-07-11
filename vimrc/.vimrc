set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" plugin to navigate filesystem
Plugin 'scrooloose/nerdtree'
" plugin for syntax-checker integration
Plugin 'vim-syntastic/syntastic'
" plugin for statusline
Plugin 'noplans/lightline.vim'
" plugin for inserting Doxygen comments
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'hdima/python-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Can't survive without this.
inoremap jk <Esc>

" Use cscope on large projects
noremap <C-k><k> :cscope find s <C-r><C-w><cr> 

" Test binding
noremap <C-f> /^<C-r>=expand("<cword>")<cr><return>

filetype plugin indent on
syntax on

set laststatus=2
set number
set showcmd

set showmatch

set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set autoindent 
" Turn on highlight all search occurrences but turn off highlight on ESC press.
set hlsearch		

set foldenable
set foldmethod=indent
set foldlevelstart=10
" Space toggles folding
nnoremap <space> za

set cursorline
set wrap
set noswapfile

set tabstop=4
set shiftwidth=4
set expandtab

colorscheme twilight
nnoremap j gj
nnoremap k gk

autocmd BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=80 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>

autocmd BufRead,BufNewFile *.c,*.h
        \ setlocal autoindent tabstop=8 softtabstop=8 shiftwidth=8 filetype=c
        \ textwidth=80 wrap noexpandtab

autocmd BufRead,BufNewFile *.java
        \ setlocal autoindent tabstop=2 softtabstop=2 shiftwidth=2 filetype=java
        \ textwidth=80 wrap noexpandtab

au FileType make setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

au FileType sml setlocal conceallevel=2

" Start NerdTree running automatically on vim startup
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
let g:python_highlight_all = 1
