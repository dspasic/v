vim.g.mapleader = " "
-- vim.g,maplocalleader = "\\"
vim.keymap.set("n", "<leader>sf", vim.cmd.Ex)
-- Enable customized non-visible character display
-- http://vimcasts.org/episodes/show-invisibles/
vim.cmd("nnoremap <leader>l :set list!<CR>")
