return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-tool-installer").setup({
      run_on_start = false,
      ensure_installed = {
        'lua_ls',
        'stylua',
        "markdownlint"
      },
    })
  end
}
