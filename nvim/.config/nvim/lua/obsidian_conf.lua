require("obsidian").setup({
  dir = "~/Documents/Mitch-Vault",

  nodes_subdir = "notes",

  note_id_func = function(title)
    return title
  end,

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  mappings = {},

  templates = {
    folder = "_Templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M"
  },

  picker = {
    name = "fzf-lua",
  },

  sort_by = "modified",
  sort_reversed = true,

  
})
