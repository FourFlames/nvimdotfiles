return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 9001,
        config = function()
            vim.cmd([[colorscheme rose-pine]])
        end,
    },
}
