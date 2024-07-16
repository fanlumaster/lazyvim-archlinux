return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add({
      {
        mode = { "n", "v" },
        { "<leader>l", group = "+lsp" },
        { "<leader>p", group = "python" },
        { "<leader>t", group = "+toggle-term" },
        { "<leader><leader>t", group = "+hop/toggle-color" },
      },
    })
  end,
}
