return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = nil, -- disable default mapping
      direction = "float",
    },
    keys = {
      {
        "<leader>rt",
        function()
          require("toggleterm").toggle()
        end,
        desc = "Toggle Terminal",
      },
    },
  },
}
