-- Separar em arquivos apenas aquelas configurações maiores e aqui no init.lua as configurações simples

return {
    {
        "eandrju/cellular-automaton.nvim",
        config = function()
            vim.keymap.set("n", "<leader>fm1", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Animação de caracteres caindo" })
            vim.keymap.set("n", "<leader>fm2", "<cmd>CellularAutomaton scramble<CR>",     { desc = "Animação de caracteres embaralhados" })
            vim.keymap.set("n", "<leader>fm3", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Animação simulando o jogo da vida (muito doido)" })
        end
    },
    {
        "theprimeagen/vim-be-good",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },
}
