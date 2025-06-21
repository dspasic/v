--
---- Standard settings
--

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- setting up newrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 1

vim.cmd.syntax("on")

vim.o.number = true

vim.o.smartindent = true
vim.o.autoindent = true
vim.o.smarttab = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.encoding = "utf-8"

-- Set some ruler options
vim.o.ruler = true
vim.o.laststatus = 2
vim.o.showcmd = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   vim.o.clipboard = 'unnamedplus'
-- end)

-- set the right margin
vim.o.colorcolumn = "80,100"

-- ignore case in search
vim.o.ic = true
-- If upper case letters occur, be case insensitive
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 350

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 500

-- Deactivate visual bell
vim.o.visualbell = false
vim.cmd([[set t_vb=]])
vim.o.ttyfast = true

-- highlight tabs and trailing spaces
-- vim.cmd [[set list listchars=tab:→\ ,trail:·]]
vim.o.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Add some additional settings
require("bitweise/remap")

-- The the plugin manager Lazy
require("bitweise/lazy")

-- vim: ts=2 sw=2 et
