--[ [ REPOSITORY ] ]--

-- https://github.com/nvimtools/none-ls.nvim

-- This is a fork of the original repository:
-- https://github.com/jose-elias-alvarez/null-ls.nvim

--[ [ RETURN PLUGIN ] ]--

return {
    "nvimtools/none-ls.nvim",
    lazy = false,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.markdownlint,
                null_ls.builtins.diagnostics.markdownlint,
            },
        })
    end,
}
