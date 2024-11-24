local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "h", "hpp","objc", "objcpp" }, 
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  single_file_support = true, 
  capabilities = require('cmp_nvim_lsp').default_capabilities(), 
}

lspconfig.pyright.setup {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_dir = lspconfig.util.root_pattern("pyrightconfig.json", "setup.py", "tox.ini", ".git"),
  single_file_support = true,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}

lspconfig.gopls.setup {
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
  single_file_support = true,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
