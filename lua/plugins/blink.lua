return {
  "saghen/blink.cmp",

  -- just using LuaSnip so I don't have to write effing VS code snippets
  dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },

  opts = {
    cmdline = { keymap = { preset = "cmdline" } },
    snippets = {
      preset = "luasnip",
    },
    keymap = {
      preset = "enter",
      -- adds supertab behavior on top of the enter behavior
      ["<Tab>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },
  },
}
