local function header_banner()
  if vim.fn.has("mac") == 1 and vim.g.neovide then
    return [[
                                   _ _             
   _____   ____ _ _ __   __ _  ___| (_) ___  _ __  
  / _ \ \ / / _` | '_ \ / _` |/ _ \ | |/ _ \| '_ \ 
 |  __/\ V / (_| | | | | (_| |  __/ | | (_) | | | |
  \___| \_/ \__,_|_| |_|\__, |\___|_|_|\___/|_| |_|
                        |___/                      
    ]]
  else
    return [[
███████╗ ██████╗ ███╗   ██╗███╗   ██╗██╗   ██╗ ██████╗ █████╗ ██╗      ██████╗██████╗ 
██╔════╝██╔═══██╗████╗  ██║████╗  ██║╚██╗ ██╔╝██╔════╝██╔══██╗██║     ██╔════╝██╔══██╗
███████╗██║   ██║██╔██╗ ██║██╔██╗ ██║ ╚████╔╝ ██║     ███████║██║     ██║     ██████╔╝
╚════██║██║   ██║██║╚██╗██║██║╚██╗██║  ╚██╔╝  ██║     ██╔══██║██║     ██║     ██╔══██╗
███████║╚██████╔╝██║ ╚████║██║ ╚████║   ██║   ╚██████╗██║  ██║███████╗╚██████╗██║  ██║
╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝
    ]]
  end
end

return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        -- Defaults to a picker that supports `fzf-lua`, `telescope.nvim` and `mini.pick`
        ---@type fun(cmd:string, opts:table)|nil
        pick = nil,
        -- Used by the `keys` section to show keymaps.
        -- Set your custom keymaps here.
        -- When using a function, the `items` argument are the default keymaps.
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          -- here we do not use g, cause g has some delay, because we alse use gg to go to first item/line
          { icon = " ", key = "w", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          {
            icon = " ",
            key = "S",
            desc = "Select Session",
            action = function()
              require("persistence").select()
            end,
          },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        -- Used by the `header` section
        header = header_banner(),
      },
    },
  },
}
