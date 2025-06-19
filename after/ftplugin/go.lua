function go_mod_tidy()
	vim.fn.system("go mod tidy")
	vim.cmd([[ LspRestart ]])
end

vim.api.nvim_create_user_command("GoTidyMod", go_mod_tidy, {})
