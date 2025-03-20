vim.keymap.set('n', '<space>', '<leader>')
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.g.mapleader = ' '

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("completions")

require("themes")

vim.lsp.inlay_hint.enable(true)

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

require('mini.surround').setup()
require('mini.comment').setup()
require('mini.surround').setup()
require('mini.pairs').setup()

require('lspconfig').clangd.setup{}
