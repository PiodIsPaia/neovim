-- Carregar plugins
require('plugin.plugins')

-- Configurações gerais e de interface
require('config.general')   -- Configurações globais de Neovim
require('user.keymaps')   -- Mapeamentos de teclas
require('user.colorscheme') -- Configuração do esquema de cores

-- Configurações de interface e UX
require('config.nvimtree')   -- NvimTree para navegação de arquivos
require('config.toggleterm') -- ToggleTerm para terminal integrado
require('config.lualine')    -- Lualine para barra de status
require('config.barbar')     -- Barbar para abas de buffer
require('config.colors')     -- Destaca cores
require('config.noice')      -- Um plugin para aprimorar a interface de mensagens do Neovim, melhorando a exibição de mensagens, comandos e notificações
require('config.fidget')     -- Exibe animações de “fidget spinners” para indicar o status das tarefas em segundo plano do LSP

-- Configurações específicas de LSP e autocompletar
require('config.lsp') -- Configuração do LSP
require('config.cmp') -- Configuração do autocompletamento

-- Configurações de plugins específicos
require('config.todo')    -- Configuração de TODOs
require('config.neocord') -- Configuração de bot de Discord
require('config.lbl')     -- Configuração de indent-blankline

-- Carregar a Dashboard
require('user.dashboard') -- Carregar Dashboard

-- Carregar configurações específicas do usuário
require('user.panda') -- Configuração personalizada do panda
