-----------------------------------------------------------
-- File: lualine.lua
-----------------------------------------------------------

-- Plugin: nvim-tree
-- url: https://github.com/nvim-lualine/lualine.nvim

return {
    -- the opts function can also be used to change the default opts:
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function()
            return {
                options = {
                    theme = 'sonokai',
                },
                sections = {
                    lualine_a = { 'mode' },
                    lualine_b = { 'branch', 'diff' },
                    lualine_c = { { 'filename', file_status = false, path = 1 } },
                    lualine_x = { 'encoding', 'filetype' },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location' }
                },
            }
        end,
    },
}
