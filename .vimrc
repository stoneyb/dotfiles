filetype off
execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch

" Tab completeion options
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompleteType = "context"

" Quickly get out of insert mode
:imap jk <Esc>

" Shift k,j -> page up/down
:map <S-k> <C-u>
:map <S-j> <C-d>

" Match opening brace
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Keep 3 lines below and above the cursor
set scrolloff=5 
