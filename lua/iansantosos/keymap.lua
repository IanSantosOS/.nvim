-- Lembre-se <C-[> é igual a <Esc>
vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", "<cmd>so<CR>", { desc = "Recarrega o arquivo de configuração atual" })

vim.keymap.set("n", "<leader>fe", ":Lex!<CR>", { desc = "Abre o Netrw tree" })

vim.keymap.set("n", "<leader>lsp", ":LspRestart<CR>", { desc = "Reinicia o LSP" })

vim.keymap.set({ "n", "v" }, "<leader>/", "<ESC>:let @/=''<CR>", { silent = true, desc = "Remove os resultados da busca com o /" })

vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>sS", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left><Left>]])

vim.keymap.set("i", "jk", "<ESC>:update<CR>");
vim.keymap.set("i", "kj", "<ESC>:update<CR>");

vim.keymap.set({ "n", "v", "i" }, "<C-s>", "<ESC>:update<CR>", { desc = "Salva o arquivo utilizando :update" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Junta a linha atual com a linha de baixo mantendo o cursor na posição original" })

vim.keymap.set("n", "<leader>fm1", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Animação de caracteres caindo" })
vim.keymap.set("n", "<leader>fm2", "<cmd>CellularAutomaton scramble<CR>",     { desc = "Animação de caracteres embaralhados" })
vim.keymap.set("n", "<leader>fm3", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Animação simulando o jogo da vida (muito doido)" })

vim.keymap.set({ "n", "v" }, "<leader>t8", ":lua ToggleColorColumn()<CR>", { silent = true, desc = "Ativa/Desativa a coluna de 80 caracteres" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover a seleção atual para baixo" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover a seleção atual para cima" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Centraliza o cursor enquanto move a tela para cima" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Centraliza o cursor enquanto move a tela para baixo" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Salta para a ocorrência posterior da busca (com o cursor centralizado)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Salta para a ocorrência anterior da busca (com o cursor centralizado)" })

-- vim.keymap.set("n", "Q", "<nop>") -- Desativa o keymap padrão da tecla Q

vim.keymap.set("x",          "<leader>p",  [["_dP]], { desc = "Substitui o que está selecionado pelo que está no clipboard" })
vim.keymap.set("n",          "<leader>Y",  [["+Y]],  { desc = "Copia do cursor atual até o final da linha para o clipboard do sistema."})
vim.keymap.set({ "n", "v" }, "<leader>y",  [["+y]],  { desc = "Copia para o clipboard do sistema" })
vim.keymap.set({ "n", "v" }, "<leader>dd", [["_d]],  { desc = "Deleta sem ir para o cliboard" })

-- TODO: colocar descrição nesses comandos
vim.keymap.set("n", "<C-k>",     "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>",     "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

function ToggleColorColumn()
    if vim.wo.colorcolumn == "80" then
        vim.wo.colorcolumn = "0"
    else
        vim.wo.colorcolumn = "80"
    end
end
