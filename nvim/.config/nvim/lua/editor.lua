vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

vim.opt.ignorecase = true
vim.opt.smartcase = true

require('mini.surround').setup()
require('mini.comment').setup {
  options = {
    ignore_blank_line = true,
  }
}

require("ultimate-autopair").setup();

require("oil").setup()

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
    vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.o.expandtab = true
	end
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
    vim.opt_local.shiftwidth = 4
		vim.opt_local.tabstop = 4
		vim.o.expandtab = false
	end
})
