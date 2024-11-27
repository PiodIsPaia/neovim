-- Configurações globais e do usuário
require('user.keymaps') -- Mapeamentos de teclas
require('user.general') -- Configurações globais de Neovim

-- Carregar o Lazy
require('config.config') -- Configurações do Lazy.nvim

-- Carrega o tema
require('user.colorscheme')

-- Carregar configurações específicas do usuário
require('user.panda') -- Configuração personalizada do panda
