set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'wombat256.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'somini/vim-autoclose'
Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'
Plugin 'itchyny/vim-cursorword'
Plugin 'jarrodctaylor/vim-256-color-schemes'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'tc50cal/vim-terminal'
Plugin 'flazz/vim-colorschemes'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'chriskempson/tomorrow-theme'

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

filetype indent plugin on
syntax enable
set autoindent
set expandtab
set tabstop=4 
set softtabstop=4
set number
set relativenumber
set wildmenu
let mapleader=";"
set incsearch
set hlsearch
set cursorline
set laststatus=2
set noshowmode
colorscheme Tomorrow-Night-Bright
map <C-n> :NERDTreeToggle<CR>
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

nnoremap <leader><space> :nohlsearch<CR>
nnoremap B ^
nnoremap E $
" multicursor mapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <silent> <S-k> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <S-j> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Go to last active tab
"au TabLeave * let g:lasttab = tabpagenr()
"nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
"vnoremap <silent> <c-h> :exe "tabn ".g:lasttab<cr>
nnoremap <c-i> :tabprevious<CR>
nnoremap <c-o> :tabnext<CR>
"something
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
