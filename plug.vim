if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()


if has("nvim")
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'tamago324/nlsp-settings.nvim'
  Plug 'jose-elias-alvarez/null-ls.nvim'
endif

" sintax
Plug 'nvim-treesitter/nvim-treesitter', {}
Plug 'nvim-treesitter/playground' 
Plug 'kyazdani42/nvim-web-devicons'

" Search engine
Plug 'nvim-telescope/telescope.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

" File manager
Plug 'kyazdani42/nvim-tree.lua'
Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Snippets
Plug 'akinsho/flutter-tools.nvim'
Plug 'https://github.com/tweekmonster/django-plus.vim'
Plug 'natebosch/dartlang-snippets' " Dart snippets
Plug 'https://github.com/dart-lang/dart-vim-plugin'
Plug 'mattn/emmet-vim'
Plug 'antonk52/cssmodules-language-server'
Plug 'rafamadriz/friendly-snippets'

" Utils
Plug 'akinsho/toggleterm.nvim' " Display a terminal
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/Yggdroot/indentLine' " Show line in indentention
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/psliwka/vim-smoothie'

" Hub plugs
Plug 'akinsho/bufferline.nvim'
Plug 'famiu/bufdelete.nvim'
Plug 'folke/which-key.nvim'
Plug 'norcalli/nvim-colorizer.lua'

" Themes
"Plug 'rose-pine/neovim'
"Plug 'hzchirs/vim-material'
"Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
"Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
"Plug 'sainnhe/gruvbox-material'
"Plug 'tikhomirov/vim-glsl'
"Plug 'rebelot/kanagawa.nvim'
"Plug 'Avimitin/neovim-deus'
"Plug 'gruvbox-community/gruvbox'
Plug 'EdenEast/nightfox.nvim'
"Plug 'https://github.com/AlessandroYorba/Despacio'
"Plug 'https://github.com/AlessandroYorba/Sierra'
"Plug 'https://github.com/larsbs/vimterial_dark'
Plug 'projekt0n/github-nvim-theme'
Plug 'flazz/vim-colorschemes'
Plug 'folke/tokyonight.nvim'
" https://github.com/smolck/uivonim/blob/master/runtime/colors/veonim.vim

call plug#end()

