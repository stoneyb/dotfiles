filetype off
execute pathogen#infect()
filetype plugin indent on
set nocompatible

syntax on

let mapleader = ","

"no swap files
set nobackup
set nowritebackup
set noswapfile

set number
set hlsearch

set pastetoggle=<f2>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set expandtab

"keep 3 lines below and above the cursor
set scrolloff=5 

set ignorecase
set smartcase

"quickly get out of insert mode
inoremap jk <Esc>

"shift k,j -> page up/down
nnoremap <S-k> <C-u>
nnoremap <S-j> <C-d>

"match opening brace
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <leader>l <end>
noremap <leader>h <end>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

nnoremap <leader>u viwU

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%131v.\+/

augroup default
    autocmd!
    autocmd FileType c inoremap iff if()<cr>{<cr>}<esc>2k3li
augroup end    



"tab completeion options
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompleteType = "context"


