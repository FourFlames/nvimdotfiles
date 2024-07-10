return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "bash",
            "css",
            "scss",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "svelte",
            "tsx",
            "typescript",
            "vim",
            "yaml",
        },
        auto_install = true,
    },
    config = function(_, opts)
        require("nvim-treesitter.install").prefer_git = true
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup(opts)
    end,
}
