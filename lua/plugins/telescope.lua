return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      event = "VeryLazy",
      config = function(_, _)
        require("lazyvim.util").on_load("telescope.nvim", function()
          local telescope = require("telescope")
          local lga_actions = require("telescope-live-grep-args.actions")
          telescope.setup({
            extensions = {
              live_grep_args = {
                auto_quoting = true,
                mappings = {
                  i = {
                    ["<C-k>"] = lga_actions.quote_prompt({ postfix = " -t py -t ts -t graphql " }),
                    -- freeze the current list and start a fuzzy search in the frozen list
                    ["<C-space>"] = lga_actions.to_fuzzy_refine,
                  },
                },
              },
            },
          })
          telescope.load_extension("live_grep_args")
        end)
      end,
      keys = {
        { "<leader>/", ":Telescope live_grep_args<CR>", desc = "Live Grep" },
        { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      },
    },
  },
}
-- todo figure out how to load arial without breaking this.
