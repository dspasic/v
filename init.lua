--
-- Standard settings
--

vim.cmd.syntax("on")

vim.opt.number = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.encoding = "utf-8"

vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.showcmd = true

-- set the right margin
vim.opt.colorcolumn = "80,100,120"

-- ignore case in search
vim.opt.ic = true
-- If upper case letters occur, be case insensitive
vim.opt.smartcase = true

-- Deactivate visual bell
vim.opt.visualbell = true
vim.cmd [[set t_vb=]]
vim.opt.ttyfast = true

-- highlight tabs and trailing spaces
-- vim.opt.listchars = "tab:→\\ ,trail:·"
vim.cmd [[set list listchars=tab:→\ ,trail:·]]

-- Enable customized non-visible character display
-- http://vimcasts.org/episodes/show-invisibles/
vim.cmd("nnoremap <leader>l :set list!<CR>")

-- set the colorscheme
vim.cmd.colorscheme = "catppuccin"

-- set up plugin manager
require("config/lazy")
