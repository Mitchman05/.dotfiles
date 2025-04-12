local luasnip = require("luasnip")
local map = vim.keymap.set

local opts = {noremap = true, silent = true}

-- PLUGIN BINDS

-- Jump to next snippet node using jk
map({'i', 's'}, 'jk', function()
  if (luasnip.jumpable(1)) then
    luasnip.jump(1)
  else
    return "jk"
  end
  end, opts
)

-- Map <Leader>L to reload the luasnip snippets
map('n', '<Leader>L', '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})<CR>', opts)

-- Open Oil file editor with -
map("n", "-", "<CMD>Oil<CR>", opts)

-- fzf-lua binds
map("n", "<Leader>ff", "<CMD>FzfLua files<CR>", opts)
map("n", "<Leader>fb", "<CMD>FzfLua buffers<CR>", opts)
map("n", "<Leader>fq", "<CMD>FzfLua quickfix<CR>", opts)
map("n", "<Leader>fg", "<CMD>FzfLua live_grep<CR>", opts)
map("n", "<Leader>fk", "<CMD>FzfLua keymaps<CR>", opts)
map("n", "<Leader>fk", "<CMD>FzfLua keymaps<CR>", opts)

-- NORMAL NEOVIM BINDS

-- Map <Leader>vW to show lines over 80 characters
local matchID = 0
map('n', '<Leader>lw', function()
  if (matchID == 0) then
    matchID = vim.fn.matchadd("Error", "\\%>80c")
  else
    vim.fn.matchdelete(matchID)
    matchID = 0
  end
  end, opts
)

-- Movement binds
map({'n', 'v'}, "j", "gj", opts)
map({'n', 'v'}, "k", "gk", opts)

-- Write and quit binds
map("n", "<Leader>q", ":q<CR>", opts)
map("n", "<Leader>Q", ":q!<CR>", opts)
map("n", "<Leader>w", ":w<CR>", opts)

-- Window movement
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Window resizing
map({"n", "t"}, "<C-Up>", ":resize -2<CR>", opts)
map({"n", "t"}, "<C-Down>", ":resize +2<CR>", opts)
map({"n", "t"}, "<C-Left>", ":vertical resize -2<CR>", opts)
map({"n", "t"}, "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer movement
map("n", "<TAB>", ":bn<CR>", opts)
map("n", "<S-TAB>", ":bp<CR>", opts)

-- Make <C-d> and <C-u> centre the screen
map({"n", "v"}, "<C-d>", "<C-d>zz", opts)
map({"n", "v"}, "<C-u>", "<C-u>zz", opts)

-- Remove highlight
map("n", "<Leader>h", vim.cmd.nohlsearch, opts)

-- Remove ununused commands
map("n", "<C-a>", "<nop>")

-- TERMINAL BINDINGS

-- Exiting the terminal
map("t", "<S-ESC>", "<C-\\><C-n>", opts)

-- Movement
map("t", "<C-w>h", "<CMD>wincmd h<CR>", opts)
map("t", "<C-w>j", "<CMD>wincmd j<CR>", opts)
map("t", "<C-w>k", "<CMD>wincmd k<CR>", opts)
map("t", "<C-w>l", "<CMD>wincmd l<CR>", opts)
