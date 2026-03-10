return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
    },
    keymap = {
      -- Desactivamos los atajos intrusivos por defecto de LazyVim
      preset = "none", 
      
      -- Tab navega por la lista si está abierta
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      
      -- Enter solo aceptará si tú has seleccionado algo con Tab.
      -- Si no hay nada seleccionado, hará un salto de línea normal ("fallback").
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
