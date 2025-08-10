--[ [ REPOSITORY ] ]--

-- https://github.com/dhruvasagar/vim-table-mode

-- You can see all the options here:
-- https://github.com/dhruvasagar/vim-table-mode/blob/master/t/config/options.vim

--[ [ RETURN PLUGIN ] ]--

return {
    "dhruvasagar/vim-table-mode",
    ft = "markdown",
    init = function()
        -- vim.g.table_mode_map_prefix = '<Leader>mt'
        vim.g.table_mode_always_active = 0
        vim.g.table_mode_disable_mappings = 0
    end,
}
