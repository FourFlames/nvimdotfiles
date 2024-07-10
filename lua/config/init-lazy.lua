local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
end

-- Add lazy to the `runtimepath`, this allows us to `reqire` it.
vim.opt.rtp:prepend(lazypath)

-- Set up lazy, and load my `lua/plugins/` folder
require("lazy").setup({ import = "plugins" }, {
    install = { colorscheme = { "habamax" } },
    checker = {
        enabled = true,
        notify = false, -- stop annoying me
    },
    change_detection = {
        enabled = true,
        notify = false, -- stop annoying me
    },
})
