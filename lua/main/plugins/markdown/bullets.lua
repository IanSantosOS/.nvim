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

        -- If you are using snacks.nvim picker plugin and is noticing
        -- some problems it could be that you need to set the option
        -- below to 0
        -- https://github.com/folke/snacks.nvim/issues/812#issuecomment-2628819060
        -- vim.g.bullets_enable_in_empty_buffers = 0
    end,
}
