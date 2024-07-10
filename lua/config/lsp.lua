-- ../plugins/lsp-cmp.lua -- gf to goto

require("mason").setup()
require("mason-lspconfig").setup({})

local cmp = require("cmp")

cmp.setup({
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "luasnip" },
    },
    mapping = {
        ["<C-j>"] = cmp.mapping.confirm({select = true}),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }
})

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, _)
    local map = vim.keymap.set
    map("n", "<leader>rn", vim.lsp.buf.rename, {})
    map("n", "<leader>ca", vim.lsp.buf.code_action, {})

    map("n", "gd", vim.lsp.buf.definition, {})
    map("n", "gi", vim.lsp.buf.implementation, {})
    map("n", "gr", require("telescope.builtin").lsp_references, {})
    map("n", "K", vim.lsp.buf.hover, {})
end

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({
            on_attach = on_attach,
            capabilities = lsp_capabilities
        })
    end,
})
