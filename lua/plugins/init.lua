return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "configs.gitsigns"
    end,
  },
  "mason-org/mason.nvim",
  "mason-org/mason-lspconfig.nvim",
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    import = "nvchad.blink.lazyspec"
  },
}
