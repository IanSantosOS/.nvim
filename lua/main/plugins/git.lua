--[ [ REPOSITORIES ] ]--

-- https://github.com/tpope/vim-fugitive
-- https://github.com/lewis6991/gitsigns.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    "tpope/vim-fugitive",
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
}
