" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

syntax on

set number
set relativenumber

set cursorline
"set cursorcolumn

set shiftwidth=4
set tabstop=4

set nobackup
set noswapfile

set scrolloff=10

set nowrap

set incsearch

set ignorecase

set history=1000
set undolevels=100

set visualbell    " don't beep
set noerrorbells  " don't beep
set belloff=all

" Enable auto completion menu after pressing TAB.
set wildmenu

set autoread

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
"
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell spelllang=en_us
noremap <Space> <PageDown>
noremap - <PageUp>


call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }

call plug#end()



let g:rustfmt_autosave = 1



" Clear status line when vimrc is reloaded.
set statusline=
"
" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
