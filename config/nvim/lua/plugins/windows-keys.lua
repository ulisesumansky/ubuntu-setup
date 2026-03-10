return {
  {
    "LazyVim/LazyVim",
    keys = function(_, keys)
      -- agregamos nuestros mapeos
      vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Ventana izquierda" })
      vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Ventana derecha" })
      vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Ventana abajo" })
      vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Ventana arriba" })
      return keys
    end,
  },
}

