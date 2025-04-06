require("fzf-lua").setup{
  -- MISC GLOBAL SETUP OPTIONS, SEE BELOW
  -- fzf_bin = ...,
  -- each of these options can also be passed as function that return options table
  -- e.g. winopts = function() return { ... } end
  "fzf-native",
  winopts = {
	preview = {
		default = "bat",
	},
  },
  previewers = {
    bat = {
      cmd             = "bat",
      args            = "--color=always --style=numbers,changes",
    },
  },
}

local actions = require("fzf-lua").actions
actions = {
	files = {
	  ["enter"] = actions.file_edit_or_qf,
	  ["ctrl-s"] = actions.file_vsplit,
	  ["ctrl-t"] = actions.file_tabedit,
	  ["alt-h"] = actions.toggle_hidden,
	},
},

vim.api.nvim_set_keymap("n", "<C-/>", "<CMD>FzfLua files<CR>", {})

require("neo-tree").setup{
	event_handlers = {
	  {
		event = "file_open_requested",
		handler = function()
		  require("neo-tree.command").execute({ action = "close" })
		end
	  },
	}
}
