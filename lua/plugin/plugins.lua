vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Gerenciador de Plugins
  use 'wbthomason/packer.nvim'

  -- ========================================
  -- 1. Dependências Básicas
  -- ========================================
  use 'nvim-lua/plenary.nvim'          -- Funções utilitárias
  use 'nvim-tree/nvim-web-devicons'    -- Ícones para o NvimTree e outros plugins

  -- ========================================
  -- 2. Temas
  -- ========================================
  --use 'gruvbox-community/gruvbox'      -- Tema Gruvbox
  --use { "catppuccin/nvim", as = "catppuccin" } -- Tema Catppuccin
  use 'folke/tokyonight.nvim'  -- Tema TokyoNight

  -- ========================================
  -- 3. Busca e Navegação
  -- ========================================
  use {
    'nvim-telescope/telescope.nvim',   
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "lukas-reineke/indent-blankline.nvim"

  -- ========================================
  -- 4. Autocompletar e LSP
  -- ========================================
  use 'nvim-treesitter/nvim-treesitter'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use "j-hui/fidget.nvim"
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- ========================================
  -- 5. Explorador de Arquivos
  -- ========================================
  use 'nvim-tree/nvim-tree.lua'        -- Explorador de arquivos

  -- ========================================
  -- 6. Terminal Integrado
  -- ========================================
  use 'akinsho/toggleterm.nvim'        -- Terminal integrado

  -- ========================================
  -- 7. Status Line
  -- ========================================
  use {
    'nvim-lualine/lualine.nvim',       -- Status line
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }  -- Ícones opcionais para o lualine
  }

  -- ========================================
  -- 8. Git
  -- ========================================
  use 'lewis6991/gitsigns.nvim'        -- Status de git (adicionar, modificar, deletar)

  -- ========================================
  -- 9. Barra de Buffers
  -- ========================================
  use 'romgrk/barbar.nvim'             -- Gerenciador de buffers

  -- ========================================
  -- 10. Discord RPC
  -- ========================================
  use 'IogaMaster/neocord'             -- RPC para Discord

  -- ========================================
  -- 11. Dashboard
  -- ========================================
  use 'glepnir/dashboard-nvim'         -- Dashboard inicial

  -- ========================================
  -- 12. Todo Comments
  -- ========================================
  use {
    "folke/todo-comments.nvim",        -- Plugin para comentários de TODO
    dependencies = { "nvim-lua/plenary.nvim" },  -- Dependência do plenary
  }

  -- ========================================
  -- 13. AutoPairs
  -- ========================================
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }

  -- ========================================
  -- 14. highlight Colors
  -- ========================================
  use 'brenoprata10/nvim-highlight-colors'

  -- ========================================
  -- 15. Noice
  -- ========================================
  use {
    "folke/noice.nvim",
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  }
end)
