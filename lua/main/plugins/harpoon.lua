--[ [ REPOSITORIES ] ]--

-- https://github.com/theprimeagen/harpoon
-- https://github.com/nvim-lua/plenary.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("harpoon"):setup()
    end
}
