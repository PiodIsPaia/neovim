local lspconfig = require('lspconfig')

-- Função para configurar formatação automática
local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end
end

-- Configuração de capacidades padrão
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configuração do clangd (C/C++)
lspconfig.clangd.setup {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp" }, 
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  single_file_support = true,
  capabilities = capabilities,
  on_attach = on_attach, 
}

-- Configuração do Pyright (Python)
lspconfig.pyright.setup { --  Essa merda não tem formatação automática
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_dir = lspconfig.util.root_pattern("pyrightconfig.json", "setup.py", "tox.ini", ".git"),
  single_file_support = true,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}

-- Configuração do gopls (Go)
lspconfig.gopls.setup {
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
  single_file_support = true,
  capabilities = capabilities,
  on_attach = on_attach,
}

-- Configuração do tsserver (TypeScript e JavaScript)
lspconfig.ts_ls.setup {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json", ".git"),
  single_file_support = true,
  capabilities = capabilities,
  on_attach = on_attach,
}
