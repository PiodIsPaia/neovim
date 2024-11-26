require('dashboard').setup {
  theme = 'hyper',

  config = {
    header = {
      '',
      '⠀⠀ﾟ⠀⠀⢀⣀⣤⣤⣤⣤⣤⣤⣀⡀⠀⠀ﾟ⠀.',
      '⠀⠀⠀⠀⠐⡊⠉⠉⠉⠉⠍⠙⠛⢿⣿⣿⣷⣦⡀⠀⠀¸',
      '⠀⠀⠀⠀⠀¸⠀⠀⠀⠀.⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣦⡀。',
      '⠀ﾟ⠀..⠀⠀⠀⠀⡀⠀⠀⠐⠀.⠀⠀⠀⠀⠈⢿⣿⣿⣿⡄⠀ﾟ',
      '⠀⠀⠀⠀⠀.⠀⢸⣿⣄⣀⣀⡄⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⡄',
      '.⠀¸⠀⠀.⠀⠀⢸⣿⣿⣿⠟⠀.⠀⠀⠀⠀⠀.⠀⠸⣿⣿⣿⣷',
      '⠀⠀⠀⠀.⠀⠀⣾⣿⣿⣷⣄⡀⠀⠈⠀⠀.⠀⠀⠀⣿⣿⣿⣿⡄',
      '.⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣦⠀.⠀⠀.⠀⢰⣿⣿⣿⣿',
      '⠀⠀⠀.⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣧.⠀⠀⠀⣼⣿⣿⣿⡟',
      '⠀.⠀⠀。⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⣰⣿⣿⣿⣿⠃',
      '⠐⢄⠀⠀⠀.⠀⣾⡟⢸⣿⣿⣿⣿⣿⣿⣧⣾⣿⣿⣿⡿⠃⠀.',
      '⠀⠈⠳⣤⣀⣰⡿⣀⣿⢧⣽⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁',
      '.⠀⠀⠀⠈⠙⠿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⠿⠋.⠀⠀ﾟ',
      '⠀⠀⠀.⠀⠀⠀⠀⠈⠉⠙⠛⠛⠋⠉⠁⠀⠀ﾟ⠀',
      '',
    },

    shortcut = {
      { desc = '  Find File', group = 'Keyword', key = 'f', action = ':Telescope find_files cwd=' },
      { desc = '󰱼 Search', group = 'String', key = 's', action = ':Telescope live_grep' },
      { desc = '󰈆 Quit', group = 'Keyword', key = 'q', action = ':q' },
    },

    project = {
      enable = true,
      limit = 8,
      icon = '',
      label = ' Projects',
      action = 'Telescope find_files cwd=',
      highlight = 'Type',
    },

    mru = {
      enable = true,
      limit = 10,
      icon = '',
      label = ' Recent Files',
      highlight = 'String',
      border = true,
      border_style = 'rounded',
    },

    footer = {
      'NeoVim',
    },

    hide = {
      statusline = true,
      tabline = true,
      winbar = true,
    },
  }
}
