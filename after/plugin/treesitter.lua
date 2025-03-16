local configs = require("nvim-treesitter/configs").setup({
    ensure_installed = { "c", "python", "vim", "vimdoc", "query", "go",
        "zig", "java", "javascript", "html", "css", "markdown" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    additional_vim_regex_highlighting = false,
})
