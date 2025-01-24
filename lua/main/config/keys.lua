--[ [ KEYMAPS ] ]--

vim.g.mapleader = " "
local set = vim.keymap.set

set("n", "<leader><leader>L", ":source %<CR>", { silent = true })
set("n", "<leader><leader>l", ":.lua<CR>",     { silent = true })
set("v", "<leader><leader>l", ":lua<CR>",      { silent = true })

set("n", "<leader>fe", ":Lex!<CR>", { desc = "Abre o Netrw tree" })

set("n", "<leader>fp", ":find ", { desc = "Go to file" });
set("n", "<leader>b",  ":b ",    { desc = "Go to file" });

set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Formata o buffer atual" })
set("n", "<leader>dh", vim.lsp.buf.hover, {})
set("n", "<leader>df", vim.lsp.buf.definition, {})
set("n", "<leader>dr", vim.lsp.buf.references, {})
set("n", "<leader>ca", vim.lsp.buf.code_action, {})
-- Talvez o lugar desse daqui seja no `keys_plugins.lua`
set("n", "<leader>lsp", ":LspRestart<CR>", { desc = "Reinicia o LSP" })

set({ "n", "v" }, "<leader>/", "<ESC>:let @/=''<CR>", { silent = true, desc = "Remove os resultados da busca com o /" })

set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
set("n", "<leader>sS", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left><Left>]])

set({ "n", "v", "i" }, "<C-s>", "<ESC>:update<CR>", { desc = "Salva o arquivo utilizando :update" })
set("i", "jk", "<ESC>");
set("i", "kj", "<ESC>:update<CR>");

-- For now I prefer to utilize tmux to handle this
-- maybe in the future I go back to this
-- set("n", "<leader>tt", ":lua OpenTerminal()<CR>", { desc = "Open terminal" })

set("n", "J", "mzJ`z", { desc = "Junta a linha atual com a linha de baixo mantendo o cursor na posição original" })

set({ "n", "v" }, "<leader>t8", ":lua ToggleColorColumn()<CR>", { silent = true, desc = "Ativa/Desativa a coluna de 80 caracteres" })

set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover a seleção atual para baixo" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover a seleção atual para cima" })

set({ "n", "v" }, "<C-u>", "<C-u>zz", { desc = "Centraliza o cursor enquanto move a tela para cima" })
set({ "n", "v" }, "<C-d>", "<C-d>zz", { desc = "Centraliza o cursor enquanto move a tela para baixo" })
-- set({ "n", "v" }, "j", "jzz", {})
-- set({ "n", "v" }, "k", "kzz", {})

set("n", "n", "nzzzv", { desc = "Salta para a ocorrência posterior da busca (com o cursor centralizado)" })
set("n", "N", "Nzzzv", { desc = "Salta para a ocorrência anterior da busca (com o cursor centralizado)" })

--[ WINDOWS ]--

set("n", "<leader>w",  "<C-w>",       { silent = true, desc = "Window prefix command" })
set("n", "<leader>wh", ":vsplit<CR>", { silent = true, desc = "Window split horizontally" })
set("n", "<leader>wv", ":split<CR>",  { silent = true, desc = "Window split vertically" })

set("n", "<C-M-k>", ":resize +5<CR>",           { silent = true })
set("n", "<C-M-j>", ":resize -5<CR>",           { silent = true })
set("n", "<C-M-h>", ":vertical resize -10<CR>", { silent = true })
set("n", "<C-M-l>", ":vertical resize +10<CR>", { silent = true })

set("n", "<C-M-Up>",    ":resize +5<CR>",           { silent = true })
set("n", "<C-M-Down>",  ":resize -5<CR>",           { silent = true })
set("n", "<C-M-Left>",  ":vertical resize -10<CR>", { silent = true })
set("n", "<C-M-Right>", ":vertical resize +10<CR>", { silent = true })

set("n", "<C-k>", ":wincmd k<CR>", { silent = true, desc = "Mover para o painel de cima" })
set("n", "<C-j>", ":wincmd j<CR>", { silent = true, desc = "Mover para o painel de baixo" })
set("n", "<C-h>", ":wincmd h<CR>", { silent = true, desc = "Mover para o painel da esquerda" })
set("n", "<C-l>", ":wincmd l<CR>", { silent = true, desc = "Mover para o painel da direita" })

set("n", "<C-Up>",    ":wincmd k<CR>", { silent = true, desc = "Mover para o painel de cima" })
set("n", "<C-Down>",  ":wincmd j<CR>", { silent = true, desc = "Mover para o painel de baixo" })
set("n", "<C-Left>",  ":wincmd h<CR>", { silent = true, desc = "Mover para o painel da esquerda" })
set("n", "<C-Right>", ":wincmd l<CR>", { silent = true, desc = "Mover para o painel da direita" })

-- vim.keymap.set("n", "Q", "<nop>") -- Desativa o keymap padrão da tecla Q

set("x",          "<leader>p",  [["_dP]], { desc = "Substitui o que está selecionado pelo que está no clipboard" })
set("n",          "<leader>Y",  [["+Y]],  { desc = "Copia do cursor atual até o final da linha para o clipboard do sistema."})
set({ "n", "v" }, "<leader>y",  [["+y]],  { desc = "Copia para o clipboard do sistema" })
set({ "n", "v" }, "<leader>dd", [["_d]],  { desc = "Deleta sem ir para o cliboard" })

set("n", "<leader>k", ":cnext<CR>zz")
set("n", "<leader>j", ":cprev<CR>zz")


--[ Functions ]--

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
