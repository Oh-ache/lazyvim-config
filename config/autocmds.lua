-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 禁止pgp文件自动格式化
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php", -- 指定文件类型为php
  callback = function()
    vim.b.autoformat = false -- 禁用当前缓冲区的自动格式化
  end,
})
