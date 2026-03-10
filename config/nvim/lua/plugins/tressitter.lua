return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    version = "*",          -- usa la última release estable (no nightly)
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "vim", "vimdoc", "query", -- <- claves para tu error
        "lua", "c", "cpp", "bash", "regex", "markdown", "markdown_inline",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
} 
