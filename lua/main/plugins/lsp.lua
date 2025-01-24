--[ [ REPOSITORIES ] ]--

-- LSP
-- https://github.com/neovim/nvim-lspconfig

-- MASON
-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim

--[ [ RETURN PLUGIN ] ]--

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    config = function()
        local capabilities = vim.tbl_deep_extend(
            "force", {},
            vim.lsp.protocol.make_client_capabilities(),
            require("cmp_nvim_lsp").default_capabilities()
        )

        require("mason").setup({})

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                "html",
                "cssls",
                "emmet_ls",
            },
            automatic_installation = false,
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            },
        })
    end,
}
