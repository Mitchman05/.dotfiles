return {
  {
    "catppuccin/nvim", name = "catppuccin", priority = 1000
  },
  "mfussenegger/nvim-lint",
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  "neovim/nvim-lspconfig",
  "nvim-treesitter/nvim-treesitter",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
    "nvim-lua/plenary.nvim",
	{
		"echasnovski/mini.nvim",
		version = false
	},
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
	{
	  "ibhagwan/fzf-lua",
	  -- optional for icon support
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  -- or if using mini.icons/mini.nvim
	  -- dependencies = { "echasnovski/mini.icons" },
	  opts = {}
	},
	{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    },
    {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = "make install_jsregexp",
      event = "InsertEnter",
    },
  {'saadparwaiz1/cmp_luasnip'},
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
  },
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },
  "micangl/cmp-vimtex",
}
