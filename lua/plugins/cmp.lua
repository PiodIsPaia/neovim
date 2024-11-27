return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', -- Fonte para LSP
      'hrsh7th/cmp-buffer',   -- Fonte para buffer
      'hrsh7th/cmp-path',     -- Fonte para caminhos
      'hrsh7th/vim-vsnip',    -- Snippets
    },
    opts = function()
      local cmp = require('cmp')
      return {
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
          { name = 'path' },
          { name = 'nvim_lsp' },
          { name = 'buffer' },
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
      }
    end,
  },
}
