-----------------------------------------------------------
-- Coding plugins configuration file
-----------------------------------------------------------

return {
    -- https://github.com/windwp/nvim-autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },

    -- https://github.com/mg979/vim-visual-multi
    {
        'mg979/vim-visual-multi',
    },

    -- https://github.com/yamatsum/nvim-cursorline
    {
        'yamatsum/nvim-cursorline',
        opts = function()
            require('nvim-cursorline').setup()
        end
    }
}
