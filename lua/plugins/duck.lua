return {
  "tamton-aquib/duck.nvim",
  config = function()
    vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, {})
    vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
    vim.keymap.set('n', '<leader>db', function() require("duck").hatch("🦀") end, {})
    vim.keymap.set('n', '<leader>dc', function() require("duck").hatch("🐈") end, {})
    vim.keymap.set('n', '<leader>da', function() require("duck").cook_all() end, {})
  end
}
