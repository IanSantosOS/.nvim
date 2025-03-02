--[ [ KEYMAP ] ]--

--[ Hardtime ]--

-- set("n", "<leader>ht", "<CMD>Hardtime toggle<CR>", { desc = "[P] Toggle Hardtime" })

--[ [ REPOSITORIES ] ]--

-- hardtime.nvim
-- https://github.com/m4xshen/hardtime.nvim

-- nui.nvim
-- https://github.com/MunifTanjim/nui.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    "m4xshen/hardtime.nvim",
    enabled = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
}
