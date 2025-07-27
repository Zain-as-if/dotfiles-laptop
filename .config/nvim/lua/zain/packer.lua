-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- CMP
  use({'hrsh7th/vim-vsnip'})
  use({'hrsh7th/vim-vsnip-integ'})
  use({'hrsh7th/cmp-vsnip'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'hrsh7th/cmp-buffer'})
  use({'hrsh7th/cmp-path'})
  use({'hrsh7th/cmp-cmdline'})
  use {
      'windwp/nvim-autopairs',
      config = function()
          require('nvim-autopairs').setup {}
      end
  }

  -- LSP
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'mfussenegger/nvim-jdtls'})
  use({'neovim/nvim-lspconfig'})
  -- Mason
  use {
      'williamboman/mason.nvim',
      run = ":MasonUpdate",
  --    config = function()
  --        require("mason").setup()
  --    end
  }

  use {
      "williamboman/mason-lspconfig.nvim",
      requires = { "williamboman/mason.nvim" },
  --    after = "mason.nvim",
  --    config = function()
  --        require("mason-lspconfig").setup {
  --            ensure_installed = {
  --                "bashls",
  --                "clangd",
  --                "cmake",
  --                "cssls",
  --                "cssmodules_ls",
  --                "css_variables",
  --                "eslint",
  --                "gopls",
  --                "html",
  --                "hyprls",
  --                "ruby_lsp",
  --                "rust_analyzer",
  --                "zls",
  --                "sqlls",
  --                "lua_ls",
  --                "pyright",
  --                "jdtls",
  --            },
  --            automatic_installation = true,
  --        }
  --    end
  }

  -- Other
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({'nvim-treesitter/playground'})
  use({'mbbill/undotree'})
  use({'tpope/vim-fugitive'})
  use({'CRAG666/code_runner.nvim'})
  use({'theprimeagen/harpoon'})
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }
end)
