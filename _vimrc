" For tag browsing install cscope apt-get install cscope

" No mouse please
set nocompatible

syntax on

set smartindent
set autoindent
set smarttab

set tabstop=4
set shiftwidth=4
set expandtab

" show partial command
set showcmd

set ruler

filetype plugin on

" ignore case in search
set ic

" highlight tabs and trailing spaces
set list listchars=tab:→\ ,trail:·

" PHP part
" PHP parser check (CTRL-L)
" :autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>

if has('gui_running')
    set guifont=FreeMono\ 10
endif

