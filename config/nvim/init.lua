-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.guifont = "VictorMono Nerd Font:h14"
return {
  {
    "nvim-tree/nvim-web-devicons",
    opts = { default = true },
  },
}
