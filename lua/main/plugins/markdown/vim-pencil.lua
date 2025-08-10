--[ [ REPOSITORY ] ]--

-- https://github.com/preservim/vim-pencil

--[ [ RETURN PLUGIN ] ]--

return {
    "preservim/vim-pencil",
    ft = {
        "markdown",
        "text",
        "gitcommit",
    },
    init = function()
        vim.g["pencil#textwidth"] = 80
        vim.g["pencil#wrapModeDefault"] = "hard"
    end
}
