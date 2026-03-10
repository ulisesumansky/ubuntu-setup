-- ~/.config/nvim/lua/plugins.lua
return {
  -- 1. Plugin para navegar entre Tmux y Neovim
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  -- 2. Si realmente quieres el tema 'nightfox' (LazyVim usa tokyonight por defecto)
  {
    "EdenEast/nightfox.nvim",
    config = function()
      -- Descomenta la línea de abajo si quieres activar este tema
      -- vim.cmd("colorscheme nightfox")
    end,
  },
}
