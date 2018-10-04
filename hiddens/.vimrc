"set nocompatible              " be iMproved, required
"filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'somini/vim-autoclose'
Plug 'yggdroot/indentline'
Plug 'dominikduda/vim_current_word'
Plug 'terryma/vim-smooth-scroll'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
"Plug 'ervandew/supertab'
"Plug 'davidhalter/jedi-vim'
"Plug 'wombat256.vim'
"Plug 'joshdick/onedark.vim'
"Plug 'sonph/onehalf'
"Plug 'tc50cal/vim-terminal'
"Plug 'chriskempson/tomorrow-theme'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'itchyny/vim-cursorword'
"Plug 'itchyny/lightline.vim'
call plug#end()            " required
filetype plugin indent on    " required

"filetype indent plugin on
syntax on
set encoding=utf-8
set autoindent
set mouse=a

set expandtab
set tabstop=4 
set softtabstop=0
set shiftwidth=4

set clipboard=unnamedplus

""go
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

""python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
augroup END


""javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
augroup END

""html
autocmd Filetype html setlocal ts=2 sw=2 expandtab


"autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
"autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
"autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79

set number
set relativenumber
set wildmenu
let mapleader=";"
set incsearch
set hlsearch
set cursorline
set laststatus=2
set noshowmode
"colorscheme deneme
"colorscheme molokai
"colorscheme knuckleduster
"colorscheme pop-rocks
"colorscheme wombat256mod
"colorscheme eldar
"colorscheme kylo
"colorscheme mycontrast
"colorscheme cobalt
"colorscheme simple_dark
colorscheme awesome

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'readonly', 'absolutepath', 'modified' ] ]
"      \ }
"      \ }

nnoremap <leader><space> :nohlsearch<CR>
nnoremap B ^
nnoremap E $
" multicursor mapping
"
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
" F11 to toggle paste mode
map <F11> :set invpaste<CR>
set pastetoggle=<F2>
vnoremap // y/<C-R>"<CR>
vnoremap co "hy:%s/<C-r>h//gc<left><left><left>

"let g:vim_current_word#highlight_twins = 1
hi CurrentWord ctermbg=18
hi CurrentWordTwins ctermbg=237

let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview
let g:ycm_key_list_stop_completion = ['<Enter>']

"let g:ycm_auto_trigger = 1


" vim-airline
"let g:airline_theme = 'powerlineish'
let g:airline_theme = 'wombat'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#virtualenv#enabled = 1

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = '«'

"syntastics
"
let g:syntastic_python_checkers = ['pylint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

