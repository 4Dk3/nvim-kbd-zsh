-- Files needed to this thing to work
require("Keys")
require("Packers")
-- Colorscheme
vim.g.colors_name = gruvbox
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd "colorscheme gruvbox"

-- Idk but things related to tab and his width

local o = vim.o
local bo = vim.bo
local wo = vim.wo
local go = vim.go

o.syntax = "on"
bo.expandtab = true
bo.shiftwidth = 2
bo.softtabstop = 2
wo.cursorline = true
wo.number = true
wo.relativenumber = true
wo.numberwidth = 4
wo.signcolumn = "yes"
go.termguicolors = false
go.cmdheight = 1
go.hlsearch = true
go.showmode = false
go.clipboard = "unnamedplus"
go.fileencoding = "utf-8"


-- Settings for modules
  require'nvim-autopairs'.setup{}
  require("nvim-tree").setup{
        view = {
            adaptive_size = false,
            centralize_selection = false,
            width = 30,
            side = "left",
          }
  }
  --require("lightline.vim").setup()
