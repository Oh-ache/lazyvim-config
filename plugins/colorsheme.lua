-- 文件路径：~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- 可选值：night, storm, day, moon
      transparent = true, -- 启用透明背景
      styles = {
        -- 可选：自定义一些样式，如注释用斜体
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight") -- 设置主题
    end,
  },
  -- 你可以在这里继续添加其他主题插件
}
