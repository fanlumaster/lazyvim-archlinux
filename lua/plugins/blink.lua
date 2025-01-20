return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      return not vim.tbl_contains({ "markdown" }, vim.bo.filetype)
        and vim.bo.buftype ~= "prompt"
        and vim.b.completion ~= false
    end,
  },
}
