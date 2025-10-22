return {
  -- "L3MON4D3/LuaSnip",
  -- lazy = true,
  -- build = (not LazyVim.is_win())
  --     and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
  --   or nil,
  -- dependencies = {
  --   {
  --     "rafamadriz/friendly-snippets",
  --     config = function()
  --       require("luasnip.loaders.from_vscode").lazy_load()
  --       require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
  --     end,
  --   },
  -- },
  -- opts = {
  --   history = true,
  --   delete_check_events = "TextChanged",
  -- },
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.4*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  config = function()
    require("luasnip.loaders.from_snipmate").lazy_load()
  end,
}
