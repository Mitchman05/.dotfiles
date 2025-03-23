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
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
	  dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	  },
	  lazy = false, -- neo-tree will lazily load itself
	  ---@module "neo-tree"
	  ---@type neotree.Config?
	  opts = {
		-- fill any relevant options here
	  },
	},
	{
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      ---@module "ibl"
      ---@type ibl.config
      opts = {},
    }
}
