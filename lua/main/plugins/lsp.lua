--[ [ REPOSITORIES ] ]--

-- LSP
-- https://github.com/neovim/nvim-lspconfig

-- MASON
-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    config = function()
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            require("cmp_nvim_lsp").default_capabilities()
        )
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        require("mason").setup({})

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                "html",
                "cssls",
                "emmet_ls",
            },
            automatic_installation = true,
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            },
        })

        require("lspconfig")["emmet_ls"].setup({
            capabilities = capabilities,
            filetypes = {
                "html",
                "css",
                "javascript",
                "javascriptreact",
                "typescriptreact",
                "svelte",
                "eruby",
                "less",
                "sass",
                "scss",
                "pug",
                "vue",
            },
            init_options = {
                html = {
                    options = {
                        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                        ["bem.enabled"] = true,
                    },
                },
            },
        })
    end,
}
