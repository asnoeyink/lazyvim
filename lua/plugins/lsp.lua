return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        ty = {
          mason = false,
          settings = {
            experimental = {
              autoImport = true,
            },
          },
        },
        basedpyright = {
          settings = {
            basedpyright = {
              disableOrganizeImports = true,
              analysis = {
                typeCheckingMode = "strict",
              },
            },
          },
        },
      },
    },
  },
}
