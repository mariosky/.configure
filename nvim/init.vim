

"let g:python3_host_prog = '/path/to/python3'


lua <<EOF
--print('lua')
require('user.options')
EOF

" GENERAL

let config_dir = '' 

if has('win64')
  let config_dir = $LOCALAPPDATA . '\nvim' 
else
  let config_dir = '~/.config/nvim' 
endif

echo config_dir
exec 'source ' . config_dir . '/general/spelling.vim'
exec 'source ' . config_dir . '/vim-plug/plugins.vim'

exec 'source ' . config_dir . '/plug-config/vimtex.vim'
exec 'source ' . config_dir . '/plug-config/vim-surruound.vim'

"Surrouound 
exec 'source ' . config_dir . '/plug-config/vim-surruound.vim'


"" MAPPINGS
exec 'source ' . config_dir . '/plug-config/which-key.vim'
exec 'source ' . config_dir . '/general/mappings.vim'

" Archivos
exec 'source ' . config_dir . '/plug-config/nerdtree.vim'

" APPEARANCE
exec 'source ' . config_dir . '/themes/airline.vim'
exec 'source ' . config_dir . '/themes/onedark.vim'
exec 'source ' . config_dir . '/themes/airline.vim'



lua <<EOF
require'nvim-tree'.setup {
  }

require("trouble").setup {
  }

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

require("nvim-lsp-installer").setup {}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
--
local servers = {'pylsp','emmet_ls', 'texlab'}
-- npm install -g @tailwindcss/language-server 
local on_attach = function()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
      vim.keymap.set("n", "df", vim.diagnostic.goto_next, {buffer=0})
      vim.keymap.set("n", "ren", vim.lsp.buf.rename, {buffer=0})
--      vim.keymap.set('n', '<Space> a', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
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
-- HTML 
  require'lspconfig'['html'].setup{
    capabilities = capabilities, 
    on_attach = on_attach,
    filetypes = {"html", "htmldjango"}
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


let ayucolor="light"
syntax enable 

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
colorscheme tender 

