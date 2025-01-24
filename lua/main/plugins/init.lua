--[ [ REPOSITORIES ] ]--

-- https://github.com/mbbill/undotree
-- https://github.com/christoomey/vim-tmux-navigator
-- https://github.com/theprimeagen/vim-be-good
-- https://github.com/nvim-lua/plenary.nvim

--[ [ RETURN PLUGIN ] ]--

return {
    "mbbill/undotree",
    "christoomey/vim-tmux-navigator",
    {
        "theprimeagen/vim-be-good",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
}
