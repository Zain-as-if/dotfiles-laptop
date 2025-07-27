vim.g.vsnip_snippet_dir = vim.fn.stdpath('config') .. '/snippets'
vim.g.vsnip_filetypes = {
    lua = {'lua'},
    python = {'python'},
    javascript = {'javascript'},
    c = {'c'},
    go = {'go'},
    rust = {'rust'},
}

vim.api.nvim_set_keymap('i', '<Tab>', 'vsnip#expandable() ? "<Plug>(vsnip-expand)" : "<Tab>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap('s', '<Tab>', 'vsnip#expandable() ? "<Plug>(vsnip-expand)" : "<Tab>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap('s', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', { expr = true, noremap = true })
