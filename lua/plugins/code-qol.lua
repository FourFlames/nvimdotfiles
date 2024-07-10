return {
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({

            })
        end
    },
    {
        "jiangmiao/auto-pairs",
        config = function()
            vim.g.AutoPairsFlyMode = 0
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        opts = {
            indent = {
                char = "|",
                tab_char = "|",
            },
            scope = {
                show_start = false,
                show_end = false,
            },
            exclude = {
                filetypes = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "trouble",
                    "oil",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm"
                },
            },
        },
    },
}
