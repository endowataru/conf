local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- LSP
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  -- Completion
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  {
    'hrsh7th/nvim-cmp',
    config = function ()
      require("plugins/nvim-cmp")
    end
  },
  'hrsh7th/cmp-vsnip',

  -- Snippets
  'hrsh7th/vim-vsnip',
  "rafamadriz/friendly-snippets",

  -- DAP
  {
    'mfussenegger/nvim-dap',
    config = function ()
      require('plugins/nvim-dap')
    end
  },
  -- Note: DAPInstall.nvim was renamed.
  --{ 
  --  'Pocco81/DAPInstall.nvim',
  --  config = function ()
  --    require('plugins/dap-install')
  --  end
  --}

  -- Trouble
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to the default settings
        -- refer to the configuration section below
      }
      vim.api.nvim_set_keymap("n", "<Leader>x", "<cmd>TroubleToggle<cr>",
        {silent = true, noremap = true}
      )
    end
  },

  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('lualine').setup()
    end
  },

  -- bufferline
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {
        options = {
          buffer_close_icon = '', -- TODO: not provided in Cica
          diagnostics = "nvim_lsp",
          tab_size = 25,
        }
      }
      vim.api.nvim_set_keymap('n', '<Leader>bn', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<Leader>bp', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    end
  },

  -- Filer
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup {
        filters = { dotfiles = true },
        actions = {
          open_file = { resize_window = false },
        },
      }
      --vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker",
    },
    config = function()
      vim.api.nvim_set_keymap('n', '<Leader>e', ':Neotree<CR>', { noremap = true, silent = true })
    end
  },

  -- Git
  {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('plugins/gitsigns')
    end
  },

  -- Indent
  {
    "tpope/vim-sleuth",
    config = function()
      -- "filetype indent" has been disabled in init.lua.
      vim.g.sleuth_no_filetype_indent_on = 1
    end
  },

  -- Languages
  "bfrg/vim-cpp-modern", -- C++
  "rust-lang/rust.vim", -- Rust
  "HerringtonDarkholme/yats.vim", -- TypeScript
  "cespare/vim-toml", -- TOML
  "jparise/vim-graphql", -- GraphQL
  "dart-lang/dart-vim-plugin", -- Dart

  -- Theme
  { "morhetz/gruvbox", config = function() vim.cmd [[colorscheme gruvbox]] end },
})

vim.api.nvim_exec(
  [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]],
  false
)

