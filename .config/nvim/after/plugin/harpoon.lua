require('harpoon').setup({
    global_settings = {
        mark_files = false
    },
})

vim.api.nvim_set_keymap('n', '<leader>m', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':lua require("harpoon.mark").rm_file()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>j', ':Telescope harpoon marks<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>i', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>5', ':lua require("harpoon.ui").nav_file(5)<CR>', { noremap = true, silent = true })
