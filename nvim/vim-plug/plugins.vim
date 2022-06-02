call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"File Tree
Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'

"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Themes 
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'joshdick/onedark.vim'

"LPS Autocomplete Snippets Lang support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'

" UltiSnips for snippets
" Plug 'sirver/ultisnips'

"LaTeX
Plug 'ckunte/latex-snippets-vim', { 'tag': '*' }
Plug 'lervag/vimtex'

"C#
Plug 'OmniSharp/omnisharp-vim'
Plug 'dart-lang/dart-vim-plugin'
"Auto {}
Plug 'jiangmiao/auto-pairs'  " https://github.com/jiangmiao/auto-pairs
Plug 'tpope/vim-surround' " https://github.com/tpope/vim-surround 
Plug 'gregsexton/matchtag' " highlights matching tags

"Highlight
Plug 'fladson/vim-kitty'
Plug 'machakann/vim-highlightedyank'

"Internal Tools
Plug 'nvim-lua/plenary.nvim' " Async programming in Lua for Neovim
Plug 'nvim-lua/popup.nvim'
"Terminal
Plug 'kassio/neoterm'
Plug 'liuchengxu/vim-which-key'
call plug#end()

