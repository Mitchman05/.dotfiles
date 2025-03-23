local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = {
    ['<CR>'] = function(fallback)
		if cmp.visible() and cmp.get_active_entry() then
			cmp.confirm()
		else
			fallback()
		end
	end,
	['<TAB>'] = function(fallback)
		if cmp.visible() then
			cmp.select_next_item()
		else
			fallback()
		end
	end,
	['<S-TAB>'] = function(fallback)
		if cmp.visible() then
			cmp.select_prev_item()
		else
			fallback()
		end
	end,
    ['<ESC>'] = function(fallback)
		if cmp.visible() and cmp.get_active_entry() then
			cmp.close()
		else
			fallback()
		end
	end,
  },
})
