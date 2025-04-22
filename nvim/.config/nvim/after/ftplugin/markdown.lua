local map = vim.keymap.set
local opts = {noremap = true, silent = true}

-- obsidian.nvim keymaps
map("n", "<C-t>", "<CMD>ObsidianTemplate<CR>", opts)
map("n", "<Leader>r", "<CMD>ObsidianRename<CR>", opts)
map("n", "<Leader>c", "<CMD>ObsidianToggleCheckbox<CR>", opts)
map("n", "<Leader>gf", "<CMD>ObsidianFollowLink<CR>", opts)

map("n", "<CR>", "<CMD>ObsidianFollowLink<CR>", opts)
