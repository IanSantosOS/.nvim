--[ [ REPOSITORY ] ]--

-- https://github.com/iamcco/markdown-preview.nvim

--[ [ RETURN PLUGIN ] ]--

return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    ft = "markdown",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
}
