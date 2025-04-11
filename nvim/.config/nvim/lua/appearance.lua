vim.lsp.inlay_hint = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"

vim.diagnostic.config({ virtual_text = true })

require("ibl").setup {
	scope = {enabled = false}
}

require("gitsigns").setup()
