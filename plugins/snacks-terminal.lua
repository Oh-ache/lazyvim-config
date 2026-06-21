-- ~/.config/nvim/lua/plugins/snacks-terminal.lua
-- 扩展 snacks.nvim 配置：支持最多 9 个并行终端并通过数字键直达切换

local function get_cwd()
  local file_dir = vim.fn.expand("%:p:h")
  if vim.fn.isdirectory(file_dir) == 1 then
    return file_dir
  end
  return vim.fn.getcwd(0)
end

local function select_terminal(count)
  for _, t in ipairs(Snacks.terminal.list()) do
    t:hide()
  end
  Snacks.terminal.get(nil, { count = count, cwd = get_cwd() }):show()
end

return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          position = "left",
          width = 0.5,
          border = "single",
          title = " Terminal %{get(b:, 'snacks_terminal', {}).id} ",
          title_pos = "center",
          stack = false,
          keys = {
            ["<c-\\><c-n>"] = {
              function(self)
                self.esc_timer = nil
                vim.cmd.stopinsert()
              end,
              mode = "t",
              desc = "Exit Terminal Mode",
            },
            q = { "hide", mode = { "n", "t" }, desc = "Hide Terminal" },
          },
        },
      },
    },

    keys = {
      {
        "<leader>tt",
        function()
          select_terminal(1)
        end,
        desc = "Toggle Terminal",
      },
      {
        "<leader>1",
        function()
          select_terminal(1)
        end,
        desc = "Terminal 1",
      },
      {
        "<leader>2",
        function()
          select_terminal(2)
        end,
        desc = "Terminal 2",
      },
      {
        "<leader>3",
        function()
          select_terminal(3)
        end,
        desc = "Terminal 3",
      },
      {
        "<leader>4",
        function()
          select_terminal(4)
        end,
        desc = "Terminal 4",
      },
      {
        "<leader>5",
        function()
          select_terminal(5)
        end,
        desc = "Terminal 5",
      },
      {
        "<leader>6",
        function()
          select_terminal(6)
        end,
        desc = "Terminal 6",
      },
      {
        "<leader>7",
        function()
          select_terminal(7)
        end,
        desc = "Terminal 7",
      },
      {
        "<leader>8",
        function()
          select_terminal(8)
        end,
        desc = "Terminal 8",
      },
      {
        "<leader>9",
        function()
          select_terminal(9)
        end,
        desc = "Terminal 9",
      },
    },
  },
}
