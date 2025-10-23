---@module "snacks"
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      hidden = true,
      ignored = true,
    },
  },
  keys = {
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>/", LazyVim.pick("grep", { root = false }), desc = "Grep (cwd)" },
  },
}
