-- Packer things
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "tanvirtin/monokai.nvim"
  use "ryanoasis/vim-devicons"
  use 'windwp/nvim-autopairs'
  use 'gruvbox-community/gruvbox'
  use 'kyazdani42/nvim-tree.lua'
  use "kyazdani42/nvim-web-devicons" 
  use "sheerun/vim-polyglot"
  use "akinsho/bufferline.nvim"
  use 'nvim-lualine/lualine.nvim'
  use "vim-scripts/AutoComplPop"
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  --use 'neoclide/coc.nvim'
end)
