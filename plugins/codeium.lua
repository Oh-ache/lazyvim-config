return {
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- 注意：虽然两者独立工作，但确保 nvim-cmp 已安装以供其他补全需求
      "hrsh7th/nvim-cmp",
    },
    event = "InsertEnter", -- 在插入模式下载入
    opts = {},
    config = function(_, opts)
      require("codeium").setup(opts)
    end,
  },
}
