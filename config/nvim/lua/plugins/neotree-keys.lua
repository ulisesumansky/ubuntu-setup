return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["<C-v>"] = "open_vsplit",  -- Ctrl+v = split vertical
          ["<C-x>"] = "open_split",   -- Ctrl+x = split horizontal
          ["t"] = "open_tabnew",      -- t = nueva pestaña
        },
      },
    },
  },
}

