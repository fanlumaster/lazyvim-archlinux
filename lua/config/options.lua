-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_floating_shadow = false
vim.g.neovide_input_ime = true
vim.g.neovide_cursor_vfx_particle_density = 100.0
-- 输入的时候隐藏鼠标
vim.g.neovide_hide_mouse_when_typing = true

local opt = vim.opt

opt.spell = false
opt.conceallevel = 0
opt.wrap = true
opt.relativenumber = false
-- opt.guifont = { "CaskaydiaCove Nerd Font", "Source Han Sans SC", ":h17" }
if vim.fn.has("mac") == 1 then
  opt.guifont = { "CaskaydiaCove Nerd Font", "PingFang SC", ":h12" }
else
  opt.guifont = { "CaskaydiaCove Nerd Font", "Source Han Sans CN", ":h12" }
end
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait0-blinkoff0-blinkon0-Cursor/lCursor,sm:block-blinkwait0-blinkoff0-blinkon0"
opt.list = true
opt.listchars = { space = "·" }
opt.shell = "fish"
-- opt.shellcmdflag = "-command"
-- opt.shellquote = '"'
-- opt.shellxquote = ""
opt.modelines = 0
opt.showcmd = false
opt.scrolloff = 0
opt.cinkeys = "0{,0},0),0],0#,!^F,o,O,e"
opt.indentkeys = "0{,0},0),0],0#,!^F,o,O,e"
