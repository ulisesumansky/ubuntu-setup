return {
  {
    "Pocco81/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    config = function()
      require("auto-save").setup {
        enabled = true,
        execution_message = {
          message = function() return "" end, -- sin mensajes al guardar
        },
      }
    end,
  },
}

