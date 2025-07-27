-- nvim-autopairs setup
require('nvim-autopairs').setup({
    check_ts = true, -- Enable tree sitter support
    ts_config = {
        lua = {'string', 'source'},
        javascript ={'template_string'},
        java = false,
    },

    disable_in_macro = true,

    disable_automatically_on_enter = true,

    map_c_h = true,
})
