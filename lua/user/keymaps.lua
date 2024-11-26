-- Definir função de atalho
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Definir líder como barra de espaço
vim.g.mapleader = ' '


-- ToggleTerm (terminal integrado)
map('n', '<C-t>', ':ToggleTerm<CR>', opts)

-- NvimTree (explorador de arquivos)
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts) -- Alternar NvimTree

-- Telescope (ferramenta de busca)
map('n', '<Leader>f', ':Telescope find_files<CR>', opts) -- Buscar arquivos
map('n', '<Leader>g', ':Telescope live_grep<CR>', opts)  -- Buscar texto no projeto

-- Navegação de janelas (movimentação entre divisões)
map('n', '<C-h>', '<C-w>h', opts) -- Ir para a janela da esquerda
map('n', '<C-l>', '<C-w>l', opts) -- Ir para a janela da direita
map('n', '<C-j>', '<C-w>j', opts) -- Ir para a janela de baixo
map('n', '<C-k>', '<C-w>k', opts) -- Ir para a janela de cima

-- Comandos básicos de salvar e sair
map('n', '<Leader>w', ':w<CR>', opts) -- Salvar arquivo
map('n', '<Leader>q', ':q<CR>', opts) -- Fechar janela

-- Recarregar o arquivo atual
map('n', '<Leader>r', ':source %<CR>', opts) -- Recarregar o arquivo atual

-- Ctrl+z para desfazer no modo normal
map('n', '<C-z>', 'u', opts)

-- Ctrl+z para desfazer no modo insert
vim.api.nvim_set_keymap('i', '<C-z>', '<C-o>u', { noremap = true, silent = true })