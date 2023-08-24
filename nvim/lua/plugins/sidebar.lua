local sidebar = require('sidebar-nvim')
sidebar.setup {
  sections = { "files", "buffers", require("dap-sidebar-nvim.breakpoints"), "git", "todos" },
  update_interval = 300,
  files = {
        icon = "",
        show_hidden = true,
        ignored_paths = {"%.git$"},
  },
  buffers = {
        icon = "",
        ignored_buffers = {}, -- ignore buffers by regex
        sorting = "id", -- alternatively set it to "name" to sort by buffer name instead of buf id
        show_numbers = true, -- whether to also show the buffer numbers
        ignore_not_loaded = true, -- whether to ignore not loaded buffers
        ignore_terminal = true, -- whether to show terminal buffers in the list
  },
  dap = {
        breakpoints = {
          icon = "",
        }
  },
  ["git"] = {
        icon = "",
  },
  todos = {
        icon = "",
        ignored_paths = {'~'}, -- ignore certain paths, this will prevent huge folders like $HOME to hog Neovim with TODO searching
        initially_closed = false, -- whether the groups should be initially closed on start. You can manually open/close groups later.
  },
}
