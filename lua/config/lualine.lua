require('lualine').setup({
    options = {
      theme = 'tokyonight-night',
      section_separators = {'', ''},
      component_separators = {'', ''},
      disabled_filetypes = {'NvimTree', 'startify'},
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff'},
      lualine_c = {'filename', 'filesize'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'},
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {'fugitive'}
  }
)