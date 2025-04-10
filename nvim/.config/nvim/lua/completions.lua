require("luasnip.loaders.from_lua").lazy_load({lazy_paths = "~/.config/nvim/LuaSnip"})

local cmp = require('cmp')
local luasnip = require('luasnip')

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'nvim_lsp_signature_help'},
    {name = "cmp-vimtex"}
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
			if luasnip.expandable() then
				luasnip.expand()
			else
				cmp.confirm({select = true})
			end
		else
			fallback()
		end
	end,

	['<TAB>'] = function(fallback)
		if cmp.visible() then
			if #cmp.get_entries() == 1 then
				cmp.confirm({select = true})
			else
				cmp.select_next_item()
			end
		elseif luasnip.locally_jumpable(1) then
			luasnip.jump(1)
		elseif has_words_before() then
			cmp.complete()
			if #cmp.get_entries() == 1 then
				cmp.confirm({select = true})
			end
		else
			fallback()
		end
	end,

	['<S-TAB>'] = function(fallback)
		if cmp.visible() then
			cmp.select_prev_item()
		elseif luasnip.locally_jumpable(-1) then
			luasnip.jump(-1)
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

luasnip.config.set_config({
	-- Enable autotriggered snippets
	enable_autosnippets = true,

  -- Use <Tab> to trigger visual selection
  store_selection_keys = "<Tab>",
})
