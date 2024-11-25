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
      lualine_c = {'filename', 'filesize', 'lsp_status'}, 
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
  extensions = {'fugitive'},
})

local function lsp_status()
  local clients = vim.lsp.get_active_clients({ bufnr = vim.api.nvim_get_current_buf() })
  if #clients == 0 then
      return "No LSP"
  end
  local status = {}
  for _, client in ipairs(clients) do
      table.insert(status, client.name)
  end
  return " LSP: " .. table.concat(status, ", ")
end

require('lualine').setup({
  sections = {
      lualine_c = { 'filename', lsp_status },
  },
})
