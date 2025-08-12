-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("i", "<C-BS>", "<C-W>", { noremap = true }) -- Ctrl+Backspace
vim.keymap.set("i", "<C-Del>", "<C-O>dw", { noremap = true }) -- Ctrl+Delete

if vim.g.neovide then
  vim.g.neovide_scale_factor = 0.85 -- Adjust zoom level (0.9 for zoom out)
  vim.g.neovide_fullscreen = true
  vim.g.neovide_padding_top = 10
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end
