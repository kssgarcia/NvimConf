local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the useins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost useins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your useins here
return packer.startup(function(use)
  -- My useins here
  use "wbthomason/packer.nvim" -- Have packer manage itself



  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  use 'hoob3rt/lualine.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'folke/lsp-colors.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground' 
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'gruvbox-community/gruvbox'
  use 'https://github.com/preservim/nerdtree'
  use 'https://github.com/jistr/vim-nerdtree-tabs' 
  use 'https://github.com/ryanoasis/vim-devicons'

  use 'groenewege/vim-less'
  use 'kchmck/vim-coffee-script'

  use 'akinsho/flutter-tools.nvim'

  use "akinsho/toggleterm.nvim"
  use 'https://github.com/tpope/vim-commentary'
  use 'https://github.com/Yggdroot/indentLine'
  use 'https://github.com/terryma/vim-multiple-cursors'
  use 'https://github.com/dart-lang/dart-vim-plugin'
  use 'https://github.com/tweekmonster/django-plus.vim'
  use 'https://github.com/psliwka/vim-smoothie'
  use 'natebosch/dartlang-snippets'
  use 'rafamadriz/friendly-snippets'
  use 'akinsho/bufferline.nvim'
  use 'liuchengxu/vim-which-key'
  use 'tamago324/nlsp-settings.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all useins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
