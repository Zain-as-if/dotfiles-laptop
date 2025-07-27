require('telescope').setup({
    defaults = {
        winblend = 0,
        layout_strategy = 'vertical',
        layout_config = {
            width = 0.5,
            preview_cutoff = 0,
            mirror = true,
        }
    },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ef', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>eg', builtin.git_files, { desc = 'Git File Search' })

vim.keymap.set('n', '<leader>c', builtin.colorscheme, { desc = 'Set Color Scheme '})

vim.keymap.set('n', '<leader>es', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
