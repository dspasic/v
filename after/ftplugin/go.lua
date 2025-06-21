function go_mod_tidy()
	vim.fn.system("go mod tidy")
	vim.cmd([[ LspRestart ]])
end

vim.api.nvim_create_user_command("GoTidyMod", go_mod_tidy, {})

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
