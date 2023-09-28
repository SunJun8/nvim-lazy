-----------------------------------------------------------
-- Themes configuration file
-----------------------------------------------------------

-- url: https://github.com/nvim-treesitter/nvim-treesitter

return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            'p00f/nvim-ts-rainbow',
        },
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "make",
                "cmake",
                "rust",
                "bash",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "vim",
            },
            sync_install = false,
            auto_install = false,

            git = {
                ignore = 0
            },

            highlight = {
                -- `false` will disable the whole extension
                enable = true,

                -- list of language that will be disabled
                disable = {
                },

                additional_vim_regex_highlighting = false,
            },

            rainbow = {
                enable = true,
                extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                max_file_lines = nil, -- Do not enable for files with more than n lines, int
            },

            indent = {
                enable = true
            }
        },
    },
}
