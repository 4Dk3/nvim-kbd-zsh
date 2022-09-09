-- Files needed to this thing to work
require("Keys")
require("Packers")
-- Colorscheme
vim.g.colors_name = nord
vim.cmd "colorscheme nord"
--vim.g.gruvbox_contrast_dark = "hard"
--vim.cmd "colorscheme NeoSolarized"
vim.cmd "set termguicolors"
-- Idk but things related to tab and his width

local o = vim.o
local bo = vim.bo
local wo = vim.wo
local go = vim.go

o.syntax = "on"
o.complete = "kspell"
o.completeopt = "longest"
bo.expandtab = true
bo.shiftwidth = 2
bo.softtabstop = 2
wo.cursorline = false
wo.number = true
wo.relativenumber = true
wo.numberwidth = 2
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
           -- side = "left",
          },
  }

  require("nvim-treesitter").setup{
    ensure_installed = "all",
    sync_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    }
  }

  require('lualine').setup{
    options = {icons_enabled = true,
    theme = "nord"},

    tabline = {},
  }


  require('nvim-highlight-colors').setup {}

  require("bufferline").setup{
    options = {
    close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
  },
      }
