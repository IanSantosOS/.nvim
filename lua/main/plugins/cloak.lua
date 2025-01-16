return {
    "laytan/cloak.nvim",
    lazy = false,
    config = function()
        require("cloak").setup({
            enabled = true,
            cloak_character = "*",
            cloak_length = 7, -- hide the true length of the value
            cloak_telescope = true,
            highlight_group = "Comment",
            patterns = {
                {
                    file_pattern = { ".env*" },
                    cloak_pattern = "=.+",
                },
            },
        })
    end,
}
