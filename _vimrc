" For tag browsing install cscope apt-get install cscope

" No mouse please
set nocompatible
filetype off " required!

set rtp+=/usr/share/vim/vim73/addon

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Fancy snippet machine
Bundle 'SirVer/ultisnips'
" Syntaxt checks
Bundle 'scrooloose/syntastic'
" Nice title bar
Bundle 'bling/vim-airline'
" Solarized color scheme
Bundle "altercation/vim-colors-solarized"
    " search and display information from arbitrary sources
Bundle "Shougo/unite.vim"
" Asynchronous execution plugin for Vim
Bundle "Shougo/vimproc.vim"
" Semantical autocomplete for PHP
Bundle 'm2mdas/phpcomplete-extended'
"A Vim plugin which shows a git diff in the 'gutter'
Bundle 'airblade/vim-gitgutter'
" Support for Rust
Bundle 'wting/rust.vim'

" Required after Vundle did its job.
filetype plugin indent on     " required!

" Automatically reload .vimrc if it is change
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

"""""""""""""""""""
" Standard settings
"""""""""""""""""""

syntax on

set smartindent
set autoindent
set smarttab
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8

"" set the right margin
set colorcolumn=120

" ignore case in search
set ic
" If upper case letters occur, be case insensitive
set smartcase

" Deactivate visual bell
set visualbell
set t_vb=
set ttyfast

filetype plugin on
filetype indent on

" Deactivate original mode indicator, powerline does that
set noshowmode
set ruler
set laststatus=2

" show partial command
set showcmd

" Twig template highlighting
autocmd BufRead *.twig set filetype=twig
autocmd BufRead *.html.twig set filetype=htmltwig

" highlight tabs and trailing spaces
set list listchars=tab:→\ ,trail:·

" Enable customized non-visible character display
" http://vimcasts.org/episodes/show-invisibles/
nnoremap <leader>l :set list!<CR>

if has('gui_running')
    set background=light
    colorscheme solarized
    " set guifont=FreeMono\ 11
    " remove the Toolbar
    if has("gui_macvim")
        set guifont=Menlo\ Regular:h12
    endif
    set go-=T
endif

let g:phpcomplete_index_composer_command='composer'
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
