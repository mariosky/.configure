" set leader keys 
let g:maplocalleader = ','
let g:mapleader = " "   " map leader to Space
set iskeyword+=-       	" treat dash separated words as a word text object"
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set nobackup
set nowritebackup
set smartindent
set relativenumber
set nohlsearch 
set hidden
set nowrap
set incsearch
set number
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
"set foldmethod=indent
set autoindent
set fileformat=unix
set timeoutlen=500
set mouse=a " Mouse support for moving arround 

let g:gruvbox_guisp_fallback = "bg"
set termguicolors " this variable must be enabled for colors to be applied properly



" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

filetype plugin indent on
