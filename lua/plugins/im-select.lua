return {
  "keaising/im-select.nvim",
  vscode = true,
  config = function()
    require("im_select").setup({
      -- Restore the default input method state when the following events are triggered
      set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },
      -- Restore the previous used input method state when the following events
      -- are triggered, if you don't want to restore previous used im in Insert mode,
      -- e.g. deprecated `disable_auto_restore = 1`, just let it empty
      -- as `set_previous_events = {}`
      set_previous_events = {}, -- we do not need to reset ime to previous state, e.g. Chinese IME when we switch from normal mode to insert mode, we only need to switch to Eng mode when Leaving insert mode to normal mode
    })
  end,
}
