return {
  "akinsho/toggleterm.nvim",
  lazy = true,
  cmd = { "ToggleTerm", "TermExec", "TermSend" },
  opts = {
    direction = "vertical",
    size = function()
      return math.floor(vim.o.columns * 0.4)
    end,
    open_mapping = false,
    insert_mappings = false,
    close_on_exit = true,
    float_opts = {
      border = "curved",
    },
  },
  keys = {
    {
      "<C-/>",
      "<Cmd>ToggleTerm direction=vertical<CR>",
      mode = { "n" },
      desc = "Toggle terminal (right side)",
    },
    {
      "<C-.>",
      "<Cmd>ToggleTerm direction=horizontal<CR>",
      mode = { "n" },
      desc = "Toggle terminal (bottom)",
    },
  },
}