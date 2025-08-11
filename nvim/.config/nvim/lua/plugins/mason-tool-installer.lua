return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-tool-installer").setup({
      ensure_installed = {
        'lua_ls',
        'stylua',
        'clangd',
        'pylsp',
      },
    })
  end
}
