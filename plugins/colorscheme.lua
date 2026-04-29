return {
  "folke/tokyonight.nvim",
  lazy = false, -- 启动时立即加载
  priority = 1000, -- 高优先级，确保先于其他插件加载
  opts = {
    style = "moon", -- 可选值：night、storm、moon、day
    -- 其他主题配置（可选）
    transparent = false, -- 是否开启透明背景
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
