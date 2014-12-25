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

"" set the right margin
set colorcolumn=120

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
    set guifont=FreeMono\ 11
    colorscheme xoria256
    " remove the Toolbar
    set go-=T
    " disable the ugly visual bell
    set visualbell t_vb=
endif

