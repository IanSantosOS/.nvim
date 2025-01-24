--[ [ REPOSITORY ] ]--

-- https://github.com/theprimeagen/harpoon

--[ [ RETURN PLUGIN ] ]--

return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("harpoon"):setup()
    end
}
