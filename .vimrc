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
" Git gutter
Plugin 'airblade/vim-gitgutter'
" Prettier
Plugin 'prettier/vim-prettier'

" Python autocompletion
Plugin 'davidhalter/jedi-vim'

" Theme plugins
Plugin 'vim-scripts/Relaxed-Green'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'fxn/vim-monochrome'
Plugin 'larssmit/vim-getafe'
Plugin 'xstrex/FireCode.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'dikiaap/minimalist'

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" OSX stupid backspace fix
set backspace=indent,eol,start

" Enable highlighting of the current line
"set cursorline

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

" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" File tree
"Plugin 'scrooloose/nerdtree'
"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tabs!
"Plugin 'jistr/vim-nerdtree-tabs'

" Line numbers
set nu

"" Tabbing like it should be done.
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

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

" Background MUST be set before color scheme.
"set background=dark

" Colorscheme
colorscheme minimalist 
"colorscheme getafe
"colorscheme pablo

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Visualize tabs
set listchars=tab:▸\ 
" enable by default:
set list

" Blink cursor on error instead of beeping (grr)
set visualbell
" Disable even the visual bell.
set t_vb=

" Python highlighting
let python_highlight_all=1
syntax on

" Move a line of text using Ctrl+[jk], indent with Ctrl+[hl]
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
nnoremap <C-h> <<
nnoremap <C-l> >>
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
inoremap <C-h> <Esc><<`]a
inoremap <C-l> <Esc>>>`]a
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv
vnoremap <C-h> <gv
vnoremap <C-l> >gv

" Disable arrow keys! There is no going back!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" ---------------------------ALE options-------------------------------
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Fix Python files with yapf.
let g:ale_fixers = {
    \'python': ['yapf'],
    \'json': ['prettier'],
\}
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_enter = 1

