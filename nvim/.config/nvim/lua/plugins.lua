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
    "nvim-telescope/telescope.nvim",
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
	{
		"echasnovski/mini.nvim",
		version = false
	},
    {
        'mrcjkb/rustaceanvim',
        version = '^5', -- Recommended
        lazy = false, -- This plugin is already lazy
    }
}
