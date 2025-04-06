vim.lsp.inlay_hint = true
vim.wo.number = true
vim.wo.relativenumber = true

vim.fn.matchadd("Error", '\\%>80c')

require("ibl").setup {
	scope = {enabled = false}
}
