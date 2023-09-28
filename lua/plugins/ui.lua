-----------------------------------------------------------
-- Themes configuration file
-----------------------------------------------------------

return {
    -- url: https://github.com/sainnhe/sonokai
    {
        "sainnhe/sonokai",
    },

    -- url: https://github.com/ellisonleao/gruvbox.nvim
    {
        "ellisonleao/gruvbox.nvim",
        lazy = true,
    },

    -- url: https://github.com/LazyVim/LazyVim
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "sonokai",
        },
    }
}
