return {
  -- -- 🔸 Gruvbox Light (cálido, fondo claro)
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function(_, opts)
  --     require("gruvbox").setup(opts)
  --     vim.o.background = "light" -- forzar versión clara
  --     vim.cmd.colorscheme("gruvbox")
  --   end,
  -- },

  -- 🔸 Catppuccin Latte (pasteles cálidos, fondo claro)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = { flavour = "latte" },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
      vim.o.background = "dark"
    end,
  },

  -- 🔸 Rose Pine Dawn (paleta suave cálida)
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("rose-pine-dawn")
  --   end,
  -- },
}

