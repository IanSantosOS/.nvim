--[ [ REPOSITORY ] ]--

-- https://github.com/dhruvasagar/vim-table-mode

--[ [ RETURN PLUGIN ] ]--

return {
    "dhruvasagar/vim-table-mode",
    ft = "markdown",
    init = function()
        vim.g.table_mode_corner = "|"
    end,
}
