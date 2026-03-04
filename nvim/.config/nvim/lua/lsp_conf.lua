vim.lsp.inlay_hint.enabled = true

vim.g.tex_flavor = "latex"

vim.lsp.enable('clangd')
vim.lsp.enable('html')
vim.lsp.enable('pyright')
vim.lsp.enable('eslint')
vim.lsp.enable('ts_ls')
vim.lsp.enable('rust_analyzer')

require("nvim-ts-autotag").setup({
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
})

require("lsp_signature").setup({
	bind = true,
	handler_opts = {
		border = "rounded"
	},
	hint_enable = false,
	hi_parameter = "IncSearch",
})


