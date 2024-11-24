require('nvim-tree').setup {
  view = {
    width = 30,
    side = 'left',
  },
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },
  git = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = true,
    custom = {
      "*.log",
      "*.bak",
      "node_modules",
      "__pycache__",
    },
  },
}
