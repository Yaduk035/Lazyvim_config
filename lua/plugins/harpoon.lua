return {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    -- Direct 'h' keymaps (ha, hh, h1..h4)
    vim.keymap.set("n", "ha", function()
      harpoon:list():add()
    end, { desc = "Harpoon Add File" })
    vim.keymap.set("n", "hh", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon Menu" })
    vim.keymap.set("n", "h1", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon 1" })
    vim.keymap.set("n", "h2", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon 2" })
    vim.keymap.set("n", "h3", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon 3" })
    vim.keymap.set("n", "h4", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon 4" })
    vim.keymap.set("n", "hr", function()
      harpoon:list():remove()
    end, { desc = "Harpoon Remove File" })

    -- Also keep convenient <leader> shortcuts
    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "Harpoon Add File" })
    vim.keymap.set("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon Menu" })
  end,
}
