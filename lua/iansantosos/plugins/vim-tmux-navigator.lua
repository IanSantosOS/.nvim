return {
    "christoomey/vim-tmux-navigator",

    vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>",    { silent = true, desc = "Mover para o painel de cima" }),
    vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>",  { silent = true, desc = "Mover para o painel de baixo" }),
    vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>",  { silent = true, desc = "Mover para o painel da esquerda" }),
    vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true, desc = "Mover para o painel da direita" }),

    vim.keymap.set("n", "<C-Up>",    ":TmuxNavigateUp<CR>",    { silent = true, desc = "Mover para o painel de cima" }),
    vim.keymap.set("n", "<C-Down>",  ":TmuxNavigateDown<CR>",  { silent = true, desc = "Mover para o painel de baixo" }),
    vim.keymap.set("n", "<C-Left>",  ":TmuxNavigateLeft<CR>",  { silent = true, desc = "Mover para o painel da esquerda" }),
    vim.keymap.set("n", "<C-Right>", ":TmuxNavigateRight<CR>", { silent = true, desc = "Mover para o painel da direita" }),
}
