"""""""""""""""""""
" Standard settings
"""""""""""""""""""

syntax on
set number

set smartindent
set autoindent
set smarttab

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8

set ruler
set laststatus=2
set showcmd

"" set the right margin
set colorcolumn=80,120

" ignore case in search
set ic
" If upper case letters occur, be case insensitive
set smartcase

" Deactivate visual bell
set visualbell
set t_vb=
set ttyfast

" highlight tabs and trailing spaces
set list listchars=tab:→\ ,trail:·

" Enable customized non-visible character display
" http://vimcasts.org/episodes/show-invisibles/
nnoremap <leader>l :set list!<CR>

" set the colorscheme
colorscheme PaperColor
