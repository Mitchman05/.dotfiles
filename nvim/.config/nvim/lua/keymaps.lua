local luasnip = require("luasnip")
local map = vim.keymap.set

local opts = {noremap = true, silent = true}

-- Jump to next snippet node using jk
map({'i', 's'}, 'jk', function()
  if (luasnip.jumpable(1)) then
    luasnip.jump(1)
  else
    return "jk"
  end
  end, opts
)

