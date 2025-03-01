require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Toggle floating terminal
map("n", "<leader>t", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open floating terminal" })

-- Toggle vertical split terminal
map("n", "<leader>tv", "<cmd>ToggleTerm size=40 direction=vertical<CR>", { desc = "Open vertical terminal" })

-- Toggle horizontal split terminal
map("n", "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<CR>", { desc = "Open horizontal terminal" })
