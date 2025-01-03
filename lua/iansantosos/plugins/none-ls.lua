return {
    "nvimtools/none-ls.nvim",
    lazy = false,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.markdownlint,
                null_ls.builtins.diagnostics.markdownlint,
            },
        })

        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
    end,
}
