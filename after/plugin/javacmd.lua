function JavaCmd()
	vim.api.nvim_create_autocmd("BufReadCmd", {
		pattern = "jdt://*",
		callback = function()
			require("jdtls").open_classfile(vim.fn.expand("<amatch>"))
		end,
		desc = "Open jdt:// class files with jdtls", -- Optional: a description for the autocommand
	})

	vim.api.nvim_create_autocmd("BufReadCmd", {
		pattern = "*.class",
		callback = function()
			require("jdtls").open_classfile(vim.fn.expand("<amatch>"))
		end,
		desc = "Open .class files with jdtls", -- Optional: a description for the autocommand
	})
end
