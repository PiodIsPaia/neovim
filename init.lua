-- Configurações globais e do usuário
require('user.keymaps')     -- Mapeamentos de teclas
require('user.general')     -- Configurações globais de Neovim

-- Carregar o Lazy
require('config.config')       -- Configurações do Lazy.nvim

-- Carrega o tema
require('user.colorscheme')  -- Tema do editor

-- Configurações gerais e de interface
require('plugins.theme')    -- Tema e cores adicionais

-- Configurações de interface e UX
require('plugins.nvimtree')    -- NvimTree para navegação de arquivos
require('plugins.toggleterm')  -- ToggleTerm para terminal integrado
require('plugins.lualine')     -- Lualine para barra de status
require('plugins.barbar')      -- Barbar para abas de buffer
require('plugins.image')       -- ImageMagick

-- Plugins de aprimoramento de UX
require('plugins.colors')      -- Destaca cores
require('plugins.neocord')     -- Aprimora a interface de mensagens do Neovim
require('plugins.fidget')      -- Exibe status das tarefas em segundo plano do LSP

-- Configurações específicas de LSP e autocompletar
require('plugins.cmp')         -- LSP e autocompletamento
require('plugins.autopairs') -- AutoPairs

-- Plugins específicos de funcionalidades
require('plugins.todo')        -- Configuração de TODOs
require('plugins.lbl')         -- Configuração de indent-blankline

-- Carregar a Dashboard
require('plugins.dashboard')   -- Carregar Dashboard

-- Carregar configurações específicas do usuário
require('user.panda')          -- Configuração personalizada do panda

