


lua <<EOF
--print('lua')
require('user.options')
EOF

" GENERAL
"source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/spelling.vim
source $HOME/.config/nvim/vim-plug/plugins.vim



lua <<EOF
require'nvim-tree'.setup {
  }

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--
local servers = { 'pylsp' }

local on_attach = function()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
      vim.keymap.set("n", "df", vim.diagnostic.goto_next, {buffer=0})
      vim.keymap.set("n", "ren", vim.lsp.buf.rename, {buffer=0})
    end 

for _,lsp in pairs(servers) do
  require'lspconfig'[lsp].setup{
    capabilities = capabilities, 
    on_attach = on_attach,
  }
end
-- OmniSharp
  require'lspconfig'['omnisharp'].setup{
    capabilities = capabilities, 
    on_attach = on_attach,
    cmd = { "/Users/mario/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp", "--languageserver" , "--hostPID", tostring(vim.fn.getpid()) }
  }

vim.opt.completeopt={"menu", "menuone", "noselect"}
-- Setup nvim-cmp.
local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
   --     vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
   --      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
         vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'luasnip' }, -- For luasnip users.
       { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })
EOF


" OmniSharp

"source $HOME/.config/nvim/plug-config/omnisharp.vim

" Conquer of Completition
"source $HOME/.config/nvim/plug-config/coc.vim
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





