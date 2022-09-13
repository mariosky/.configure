call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"File Tree
"Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"Git Help 
Plug 'tpope/vim-fugitive'
"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"indent lines 
Plug 'lukas-reineke/indent-blankline.nvim'

"Themes 
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'Mofiqul/vscode.nvim'
" Auto complete
"
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

"For pretty error list 
Plug 'folke/trouble.nvim'
" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
"
"LPS Autocomplete Snippets Lang support
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'honza/vim-snippets'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
"Plug 'mattn/emmet-vim'
" Better syntax-highlighting for filetypes in vim
"Plug 'sheerun/vim-polyglot'

" Comment stuff out 
Plug 'tpope/vim-commentary'

"LaTeX
"Plug 'ckunte/latex-snippets-vim', { 'tag': '*' }
"Plug 'lervag/vimtex'

"C#
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'dart-lang/dart-vim-plugin'
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
"Plug 'kassio/neoterm'
"Plug 'liuchengxu/vim-which-key'
call plug#end()

