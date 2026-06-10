local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

map("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
map("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Explore files" })

map("n", "<leader>ff", "<cmd>Pick files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Pick grep_live<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Pick buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Pick help<CR>", { desc = "Help tags" })
