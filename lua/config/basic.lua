local opt = vim.opt
local g = vim.g

opt.background = "dark"
g.mapleader = " "

opt.number = true
opt.relativenumber = true

opt.termguicolors = true

local TABWIDTH = 4
opt.tabstop = TABWIDTH
opt.shiftwidth = TABWIDTH
opt.softtabstop = TABWIDTH
opt.expandtab = true
opt.autoindent = true
--opt.smartindent = true
opt.cindent = true
opt.wrap = false

opt.hidden = false

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"
