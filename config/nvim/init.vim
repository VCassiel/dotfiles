"   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
"   Shared Configuration

"------------------------
"   BASE SETTINGS
"------------------------

syntax on
set noerrorbells
set noswapfile
set encoding=utf-8
set expandtab
set shiftwidth=4
set tabstop=4 softtabstop=4
set number relativenumber
set smartcase
set smarttab
set smartindent
set noshowmode
set cursorline
set cursorcolumn
set shortmess+=c
set completeopt=menuone,longest
set clipboard=unnamedplus
set linebreak
set ruler
set incsearch
set mouse=nicr
set mouse=a
set termguicolors
set fillchars+=vert:\|
let mapleader = " "

"------------------------
"   PLUGIN SETTINGS
"------------------------

let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,'

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:ale_sign_column_always = 0
let g:ale_completion_enabled = 1

"------------------------
"   GUI COLORS & STYLES
"------------------------

set guifont=Fira\ Code:h16
colorscheme catppuccin

"------------------------
"   AIRLINE THEME
"------------------------

let g:airline_theme='zenburn'

"------------------------
"   REMAPS
"------------------------

" •• Normal Mode

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>dv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap Y y$
nnoremap L $
nnoremap H ^
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap dL d$
nnoremap dH d^
nnoremap x "_x

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" •• Visual Mode

vnoremap L $
vnoremap H ^
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap x "_x
