local icons = LazyVim.config.icons

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      disabled_filetypes = { -- Filetypes to disable lualine for.
        -- TODO: figure out how to get rid of the directory line
        winbar = { "snacks_terminal" }, -- only ignores the ft for winbar.
      },
    },
    -- top
    winbar = {
      lualine_a = {},
      lualine_b = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        {
          "filename",
          path = 1,
          symbols = {
            modified = "●",
          },
        },
      },
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {},
      -- intentionally different line than active so it doesn't highlight.
      lualine_c = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        {
          "filename",
          path = 1,
          symbols = {
            modified = "●",
          },
        },
      },

      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },

    -- bottom
    sections = {
      lualine_c = {
        LazyVim.lualine.root_dir(),
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        --{ LazyVim.lualine.pretty_path() },
        --{ "aerial" },
      },
    },
  },
}
