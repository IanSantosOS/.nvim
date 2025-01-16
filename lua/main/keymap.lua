-- Lembre-se <C-[> é igual a <Esc>
vim.g.mapleader = " "
local set = vim.keymap.set

set("n", "<leader><leader>", ":source %<CR>", { desc = "Recarrega o arquivo de configuração atual" })

set("n", "<leader>fe", ":Lex!<CR>", { desc = "Abre o Netrw tree" })

set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Formata o buffer atual" })

set("n", "<leader>lsp", ":LspRestart<CR>", { desc = "Reinicia o LSP" })

set({ "n", "v" }, "<leader>/", "<ESC>:let @/=''<CR>", { silent = true, desc = "Remove os resultados da busca com o /" })

set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
set("n", "<leader>sS", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left><Left>]])

set("i", "jk", "<ESC>:update<CR>");
set("i", "kj", "<ESC>:update<CR>");

-- For now I prefer to utilize tmux to handle this
-- maybe in the future I go back to this
-- set("n", "<leader>tt", ":lua OpenTerminal()<CR>", { desc = "Open terminal" })

set({ "n", "v", "i" }, "<C-s>", "<ESC>:update<CR>", { desc = "Salva o arquivo utilizando :update" })

set("n", "J", "mzJ`z", { desc = "Junta a linha atual com a linha de baixo mantendo o cursor na posição original" })

set({ "n", "v" }, "<leader>t8", ":lua ToggleColorColumn()<CR>", { silent = true, desc = "Ativa/Desativa a coluna de 80 caracteres" })

set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover a seleção atual para baixo" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover a seleção atual para cima" })

set("n", "<C-u>", "<C-u>zz", { desc = "Centraliza o cursor enquanto move a tela para cima" })
set("n", "<C-d>", "<C-d>zz", { desc = "Centraliza o cursor enquanto move a tela para baixo" })

set("n", "n", "nzzzv", { desc = "Salta para a ocorrência posterior da busca (com o cursor centralizado)" })
set("n", "N", "Nzzzv", { desc = "Salta para a ocorrência anterior da busca (com o cursor centralizado)" })

set("n", "<leader>w",  "<C-w>",       { silent = true, desc = "Window prefix command" })
set("n", "<leader>wh", ":vsplit<CR>", { silent = true, desc = "Window split horizontally" })
set("n", "<leader>wv", ":split<CR>",  { silent = true, desc = "Window split vertically" })

-- vim.keymap.set("n", "Q", "<nop>") -- Desativa o keymap padrão da tecla Q

set("x",          "<leader>p",  [["_dP]], { desc = "Substitui o que está selecionado pelo que está no clipboard" })
set("n",          "<leader>Y",  [["+Y]],  { desc = "Copia do cursor atual até o final da linha para o clipboard do sistema."})
set({ "n", "v" }, "<leader>y",  [["+y]],  { desc = "Copia para o clipboard do sistema" })
set({ "n", "v" }, "<leader>dd", [["_d]],  { desc = "Deleta sem ir para o cliboard" })

-- TODO: colocar descrição nesses comandos
set("n", "<leader>k", ":cnext<CR>zz")
set("n", "<leader>j", ":cprev<CR>zz")

function ToggleColorColumn()
    if vim.wo.colorcolumn == "80" then
        vim.wo.colorcolumn = "0"
    else
        vim.wo.colorcolumn = "80"
    end
end

function OpenTerminal()
    vim.cmd.new()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 15)
end
