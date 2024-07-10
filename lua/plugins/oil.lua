return {
    "stevearc/oil.nvim",
    opts = {
        skip_confirm_for_simple_edits = true,
        keymaps = {
            ["<C-s>"] = false, -- Note that C must be capitalized here to disable the default bind
            ["<C-h>"] = false, -- Here too
        },
        view_options = {
            show_hidden = true,
        },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
