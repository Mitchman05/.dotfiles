vim.lsp.inlay_hint = true

vim.g.tex_flavor = "latex"

require'lspconfig'.clangd.setup{}

require("lsp_signature").setup({
	bind = true,
	handler_opts = {
		border = "rounded"
	},
	hint_enable = false,
	hi_parameter = "IncSearch",
})
