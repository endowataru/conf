local install_path = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use "rafamadriz/friendly-snippets"

  -- LSP
  use { "ray-x/lsp_signature.nvim", }

  -- Trouble
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
      vim.api.nvim_set_keymap("n", "<Leader>x", "<cmd>TroubleToggle<cr>",
        {silent = true, noremap = true}
      )
    end
  }

  -- statusline
  use {
    'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('feline').setup()
    end
  }

  -- Filer
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        require('nvim-tree').setup { filters = { dotfiles = true } }
        vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
      end
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('plugins/gitsigns')
    end
  }

  -- Languages
  use "bfrg/vim-cpp-modern" -- C++
  use "rust-lang/rust.vim" -- Rust
  use "HerringtonDarkholme/yats.vim" -- TypeScript
  use "cespare/vim-toml" -- TOML
  use "jparise/vim-graphql" -- GraphQL

  -- Theme
  use { "morhetz/gruvbox", config = function() vim.cmd [[colorscheme gruvbox]] end }

  if packer_bootstrap then
    require("packer").sync()
  end
end)

vim.api.nvim_exec(
  [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]],
  false
)

