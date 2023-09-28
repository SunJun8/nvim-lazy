-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: nvim-tree
-- url: https://github.com/kyazdani42/nvim-tree.lua

-- Keybindings are defined in `core/keymaps.lua`:
-- https://github.com/kyazdani42/nvim-tree.lua#keybindings

return {
    {
        'nvim-tree/nvim-tree.lua',
        version = "*",
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        -- lazy = true,
        config = function()
            require("nvim-tree").setup {
                disable_netrw = false,
                hijack_netrw = true,
                respect_buf_cwd = true,
                actions = {
                    open_file = {
                        resize_window = false,
                        quit_on_open = false,
                        window_picker = {
                            enable = false
                        }
                    }
                },
                filters = {
                    dotfiles = true,
                    custom = {
                        '.git',
                        'node_modules',
                        '.cache',
                        '.vscode'
                    },
                },

                view = {
                    width = 35,
                    side = "left",
                },
            }
        end
    }
}
