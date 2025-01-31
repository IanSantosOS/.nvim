--[ [ REPOSITORY ] ]--

-- https://github.com/bullets-vim/bullets.vim

--[ [ RETURN PLUGIN ] ]--

return {
    "bullets-vim/bullets.vim",
    ft = {
        "markdown",
        "text",
        "gitcommit",
    },
    init = function()
        -- enabling/disabling mappings
        vim.g.bullets_set_mappings = 1

        vim.g.bullets_checkbox_markers = ' ---------x'
    end,
}
