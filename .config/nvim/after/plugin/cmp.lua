local cmp = require('cmp')
local npairs = require('nvim-autopairs')

cmp.setup({
    sources = {
        { name = 'nvim-lsp' },
        { name = 'nvim_autopairs' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'vsnip', keyword_length = 2 },
    },

    snippet = {
        expand = function(args)
            require('vim-vsnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm selection
    },
})
