return {
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "BufReadPost",
    opts = {},
    -- stylua: ignore
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIXME,BUG}}<cr>", desc = "Todo/Fix/Bug (Trouble)" },
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Search Todo Comments" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIXME,BUG<cr>", desc = "Search Todo/Fix/Bug" },
    },
  },
}
