vim.lsp.inlay_hint = true

vim.g.tex_flavor = "latex"

require'lspconfig'.clangd.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.pyright.setup{}

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


