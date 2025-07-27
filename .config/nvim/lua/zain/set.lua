-- Enable line numbers and relative numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

-- Highlight colors (overridden by colorscheme, hence set after)
-- Defaults LineNr - #757b9e
--          CursorLineNr - #91d663
--          CursorLine - #2a2b3d
--          LineNrAbove - #fa98a8
--          LineNrBelow - #879bff
--          Status_LineNr - #6b729c
--          Status_DivLine - bg = #1e1e2e fg = #313244 
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#757b9e' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#91d663" })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = "none" })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#fa98a8' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#879bff' })

-- Set line number color to be a bit darker
vim.api.nvim_set_hl(0, 'Status_LineNr', { fg = '#6b729c' })

-- Set background color to the same as normal, but text color to light grey; use vertical line extension (U+23D0)
vim.api.nvim_set_hl(0, 'Status_DivLine', { bg = '#1e1e2e', fg = '#313244' })


-- Highlight the current line
vim.wo.cursorline = true

-- Set sign column to always show, limiting width to 1 character
vim.wo.signcolumn = 'yes:1'

-- Set up the status column format
vim.o.statuscolumn = "%#Status_LineNr#%3.3l%* %-2.2r%#Status_DivLine#⏐%*"

