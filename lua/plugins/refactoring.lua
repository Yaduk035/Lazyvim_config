return {
  -- Incremental rename
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    keys = {
      {
        "<leader>rn",
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        desc = "Incremental rename",
        mode = "n",
        noremap = true,
        expr = true,
      },
    },
    config = true,
  },

  -- Refactoring tool
  {
    "ThePrimeagen/refactoring.nvim",
    -- Use 'Lazy' instead of 'VeryLazy' to ensure it's available
    -- as soon as you hit the keybind
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor({
            show_success_message = true,
          })
        end,
        mode = "v",
        noremap = true,
        silent = true,
      },
    },
    -- Force plenary to be available
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
    config = function(_, opts)
      -- Explicitly require plenary before setup to confirm it's in the path
      local has_plenary, _ = pcall(require, "plenary")
      if not has_plenary then
        return
      end
      require("refactoring").setup(opts)
    end,
  },
}
