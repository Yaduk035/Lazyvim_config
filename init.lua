-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("i", "<C-BS>", "<C-W>", { noremap = true }) -- Ctrl+Backspace
vim.keymap.set("i", "<C-Del>", "<C-O>dw", { noremap = true }) -- Ctrl+Delete

if vim.g.neovide then
  local scale_factor = 0.85
  vim.g.neovide_scale_factor = scale_factor -- Adjust zoom level (0.9 for zoom out)
  vim.g.neovide_fullscreen = true
  vim.g.neovide_padding_top = 10
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.cmd.colorscheme("catppuccin-macchiato")

  -- Zoom In
  vim.keymap.set("n", "<C-=>", function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1
  end)

  -- Zoom Out
  vim.keymap.set("n", "<C-->", function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor / 1.1
  end)

  -- Reset Zoom
  vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = scale_factor
  end)
end
