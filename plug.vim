if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-treesitter/playground' 
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
endif

Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/jistr/vim-nerdtree-tabs' 
Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

Plug 'akinsho/flutter-tools.nvim'

Plug 'akinsho/toggleterm.nvim' " Display a terminal
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/Yggdroot/indentLine' " Show line in indentention
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/dart-lang/dart-vim-plugin'
Plug 'https://github.com/tweekmonster/django-plus.vim'
Plug 'https://github.com/psliwka/vim-smoothie'
Plug 'natebosch/dartlang-snippets' " Dart snippets

call plug#end()

