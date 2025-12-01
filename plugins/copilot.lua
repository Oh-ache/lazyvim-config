return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        -- 启用多行补全
        show_multiline = true, -- 显式启用多行
        multiline = {
          enabled = true, -- 允许显示多行建议
          max_lines = 10, -- 最大显示行数
          min_lines = 2, -- 最小显示行数（避免单行）
        },
      },
    })
  end,
}
