return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>fj", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fk", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
        { "<leader>fl", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
    },
}
