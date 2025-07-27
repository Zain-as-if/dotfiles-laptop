-- Reserve a space in the gutter
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

-- Setup mason + mason-lspconfig
require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "cssls",
        "cssmodules_ls",
        "eslint",
        "gopls",
        "html",
        "jdtls",
        "lua_ls",
        "pyright",
        "ruby_lsp",
        "rust_analyzer",
        "zls",
        "sqlls",
        "qmlls"
    },
    automatic_installation = true
}

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.bashls.setup { capabilities = capabilities }
lspconfig.clangd.setup { capabilities = capabilities }
lspconfig.cmake.setup { capabilities = capabilities }
lspconfig.cssls.setup { capabilities = capabilities }
lspconfig.cssmodules_ls.setup { capabilities = capabilities }
lspconfig.eslint.setup { capabilities = capabilities }
lspconfig.gopls.setup { capabilities = capabilities }
lspconfig.html.setup { capabilities = capabilities }
lspconfig.pyright.setup { capabilities = capabilities }
lspconfig.ruby_lsp.setup { capabilities = capabilities }
lspconfig.rust_analyzer.setup { capabilities = capabilities }
lspconfig.zls.setup { capabilities = capabilities }
lspconfig.sqlls.setup { capabilities = capabilities }

-- These are just examples. Replace them with the language
-- servers you have installed in your system
--require('lspconfig').bashls.setup({})
--require('lspconfig').clangd.setup({})
--require('lspconfig').cmake.setup({})
--require('lspconfig').cssls.setup({})
--require('lspconfig').cssmodules_ls.setup({})
--require('lspconfig').css_variables.setup({})
--require('lspconfig').eslint.setup({})
--require('lspconfig').gopls.setup({})
--require('lspconfig').html.setup({})
--require('lspconfig').hyprls.setup({})
--require('lspconfig').java_language_server.setup({})
--require('lspconfig').lua_ls.setup({})
--require('lspconfig').pyright.setup({})
--require('lspconfig').ruby_lsp.setup({})
--require('lspconfig').rust_analyzer.setup({})
--require('lspconfig').zls.setup({})
--require('lspconfig').sqlls.setup({})
--require('mason').setup()
--require('mason-lspconfig').setup {
--    ensure_installed = { "jdtls" }
--}

local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})
