local map = vim.keymap.set

-- Space Leader
vim.g.mapleader = " "

-- Oil
map("n", "<leader>er", vim.cmd.Oil)

-- jk/kj exits insert mode
map("i", "jk", "<esc>")
map("i", "kj", "<esc>")
-- and terminal
map("t", "jk", "<c-\\><c-n>")
map("t", "kj", "<c-\\><c-n>")

-- speaking of the terminal,
--     this splits down, moves down, opens the terminal, and then begins inserting
map("n", "<leader>t", "<c-w><c-s><c-w><c-j><cmd>terminal<CR><s-a>")
map("t", "<c-j>", "<c-\\><c-n><c-w>j")
map("t", "<c-k>", "<c-\\><c-n><c-w>k")
map("t", "<c-l>", "<c-\\><c-n><c-w>l")
map("t", "<c-h>", "<c-\\><c-n><c-w>h")

-- save
map("i", "<c-s>", "<C-c>:w<cr>")
map("n", "<c-s>", ":w<cr>")

-- keep focus on c-u/c-d
map("n", "<c-d>", "<c-d>zz")
map("n", "<c-u>", "<c-u>zz")

-- move lines up and down by visual line when wrapping
map("n", "j", "gj")
map("n", "k", "gk")

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Less Painful Indentation
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Quick Quit
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Aggressively Quit" })

-- Copy and paste with clip
map({"n", "v"}, "<leader>y", '"+y') -- yank motion
map({"n", "v"}, "<leader>Y", '"+Y') -- yank motion

map({"n", "v"}, "<leader>p", '"+p') -- paste

-- Move focus
map("n", "<C-h>", "<C-w>h", {desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", {desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w>j", {desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w>k", {desc = "Move focus to the upper window" })

-- Split
map("n", "<C-A-j>", "<C-w><C-s><C-w><C-j>", {desc = "Split window down"} )
map("n", "<C-A-l>", "<C-w><C-v><C-w><C-l>", {desc = "Split window right"} )

-- Show Diagnostic
map("n", "<leader>df",
    "<cmd>lua vim.diagnostic.open_float()<CR>",
    {desc = "Show LSP diagnostic"}
)
