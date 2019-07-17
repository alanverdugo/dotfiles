set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" NOTE: After adding a new module, go into vim and execute :PluginInstall
" ALE (Asynchronous Lint Engine) - https://github.com/w0rp/ale
Plugin 'w0rp/ale'

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" PEP8-compliant indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
Plugin 'vim-scripts/indentpython.vim'

" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Encoding
set encoding=utf-8

" Syntax Checking/Highlighting
Plugin 'vim-syntastic/syntastic'

" PEP8 checking
"Plugin 'nvie/vim-flake8'
"au FileReadPre *.py call flake8#Flake8()

" Python highlighting
let python_highlight_all=1
syntax on

" File tree
"Plugin 'scrooloose/nerdtree'
"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tabs!
"Plugin 'jistr/vim-nerdtree-tabs'

" Line numbers
set nu

" Power line!!!
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Always show statusline
set laststatus=2

" Use system clipboard
set clipboard=unnamed

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Show rulers at columns 80 and 100
set colorcolumn=80,100

" Colorscheme
colorscheme pablo
