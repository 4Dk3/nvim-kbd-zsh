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
o.complete = "kspell"
o.completeopt = "longest"
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
    theme = "gruvbox"},

    tabline = {},
  }

  require("bufferline").setup{
    options = {
    close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
  },
  highlights = {
    fill = {
      guifg = { attribute = "fg", highlight = "#ff0000" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    background = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },

    buffer_visible = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },

    close_button = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    close_button_visible = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },

    tab_selected = {
      guifg = { attribute = "fg", highlight = "Normal" },
      guibg = { attribute = "bg", highlight = "Normal" },
    },
    tab = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    tab_close = {
      guifg = { attribute = "fg", highlight = "TabLineSel" },
      guibg = { attribute = "bg", highlight = "Normal" },
    },

    duplicate_selected = {
      guifg = { attribute = "fg", highlight = "TabLineSel" },
      guibg = { attribute = "bg", highlight = "TabLineSel" },
      gui = "italic",
    },
    duplicate_visible = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
      gui = "italic",
    },
    duplicate = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
      gui = "italic",
    },

    modified = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    modified_selected = {
      guifg = { attribute = "fg", highlight = "Normal" },
      guibg = { attribute = "bg", highlight = "Normal" },
    },
    modified_visible = {
      guifg = { attribute = "fg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },

    separator = {
      guifg = { attribute = "bg", highlight = "TabLine" },
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    separator_selected = {
      guifg = { attribute = "bg", highlight = "Normal" },
      guibg = { attribute = "bg", highlight = "Normal" },
    },
    indicator_selected = {
      guifg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
      guibg = { attribute = "bg", highlight = "Normal" },
    },
  },
}
