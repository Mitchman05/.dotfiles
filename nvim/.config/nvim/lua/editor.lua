vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

require('mini.surround').setup()
require('mini.comment').setup()
require('mini.surround').setup()
require('mini.pairs').setup()

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
    vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.o.expandtab = true
	end
})
