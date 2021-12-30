
" GENERAL
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/spelling.vim
source $HOME/.config/nvim/vim-plug/plugins.vim

" OmniSharp
source $HOME/.config/nvim/plug-config/omnisharp.vim

" Conquer of Completition
source $HOME/.config/nvim/plug-config/coc.vim
" LaTeX
source $HOME/.config/nvim/plug-config/vimtex.vim

"Surrouound 
source $HOME/.config/nvim/plug-config/vim-surruound.vim


"" MAPPINGS
source $HOME/.config/nvim/plug-config/which-key.vim
source $HOME/.config/nvim/general/mappings.vim

" Archivos
source $HOME/.config/nvim/plug-config/nerdtree.vim

" APPEARANCE
" source $HOME/.config/nvim/themes/nord.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
" let g:deoplete#enable_at_startup = 1
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/





