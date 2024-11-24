local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({
      select = true,  
      behavior = cmp.ConfirmBehavior.Replace,  
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),
  completion = {
    win_width = 40,
    win_height = 10,
    scrollbar = true,
  },
  window = {
    completion = cmp.config.window.bordered({
      winhighlight = 'Normal:Normal,CursorLine:Visual,Search:None',
      border = 'rounded',
    }),
    documentation = cmp.config.window.bordered({
      winhighlight = 'Normal:Normal,CursorLine:Visual,Search:None',
      border = 'single',
    }),
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format('%s', vim_item.kind)
      vim_item.menu = string.format('[%s]', entry.source.name)
      return vim_item
    end,
  },
})
