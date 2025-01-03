-- Basicamente uma config do neovim com nenhum ou poucos plugins
-- Como o Neovim é o meu principal, grande parte dessas configurações eu utilizo mais no VIM que é o meu secundário

--[ [ VIMSET ] ]--

vim.cmd('colorscheme slate')      -- Altera o coloscheme do neovim

vim.opt.compatible = false        -- Desative o modo de compatibilidade com o VI

vim.opt.termguicolors = true      -- Permite o uso de cores 24-bit
vim.opt.updatetime = 50           -- Define o intervalo (ms) para ações automáticas (ex.: plugins, eventos CursorHold)

vim.g.netrw_banner = 0            -- Desativa o banner do netrw
vim.g.netrw_altv = 1              -- Arquivos abertos usando "v" irão abrir a direita do netrw
-- vim.cmd('set path+=**')        -- Procura recursivamente dentro do diretório atual

vim.opt.splitbelow = true         -- Define a criação de paineis (janelas, window, panels) para baixo
vim.opt.splitright = true         -- Define a criação de paineis (janelas, window, panels) para a direita

vim.opt.syntax = "on"             -- Ativa a syntax padrão do nvim
vim.opt.fileencoding = "utf-8"    -- Padrão UTF-8

vim.opt.number = true             -- Ativa a coluna de números do lado esquerdo
vim.opt.relativenumber = true     -- Ativa o relative number
vim.opt.signcolumn = "yes"        -- Sempre exibir um espaço do lado esquerdo da coluna de números para marcadores visuais
-- vim.opt.colorcolumn = '80'     -- Uma coluna visual para delimitar a quantidade de caracteres

vim.opt.wrap = false              -- Desativa a quebra de linha automática
vim.opt.scrolloff = 8             -- Distância para ativar a rolagem vertical do texto
vim.opt.sidescrolloff = 8         -- Distância para ativar a rolagem horizontal do texto

vim.opt.tabstop = 4               -- Define que 1 Tab = 4 Espaços
vim.opt.softtabstop = 0           -- Os espaços inseridos quando aperta Tab ou BaskSpace será o mesmo do tabstop
vim.opt.shiftwidth = 4            -- Espaços inseridos ao utilizar a tecla de recuo
vim.opt.expandtab = true          -- Transforma Tab em Espaços

vim.opt.autoindent = true         -- Indentação automática
vim.opt.smartindent = true        -- Indentação inteligente
vim.opt.cindent = true            -- Indentação C automática

vim.opt.smartcase = true          -- Respeita maiúsculas/minúsculas se houver letras maiúsculas na busca.
vim.opt.ignorecase = true         -- Ignora maiúsculas/minúsculas em buscas
vim.opt.incsearch = true          -- Realiza as buscas durante a digitação

vim.opt.showcmd = true            -- Mostrar a linha de comando (":q" por exemplo)
vim.opt.cmdheight = 1             -- Tamanho da linha de comando
vim.opt.showmode = false          -- Não mostrar o mode [Normal, Visual, Insert] dentro do cmd

vim.opt.laststatus = 3            -- Sempre mostrar a linha de status na parte inferior ("statusline global")

vim.o.wildmenu = true             -- Mostrar um menu de opções na linha de comando quando clicar Tab

vim.opt.swapfile = false          -- Desativa a criação de arquivos de troca para recuperação automática em caso de falha ou fechamento inesperado.
vim.opt.backup = false            -- Desativa a criação de cópias de segurança dos arquivos antes de serem salvos.
vim.opt.undofile = true           -- Habilita a gravação de histórico de edições em arquivo para recuperação entre sessões.


-- Decide onde colocará a pasta de undodir que foi habilitada pelo "undofile"
if vim.fn.has("win32") == 1 then
    vim.opt.undodir = vim.fn.expand("$HOME") .. "/AppData/Local/nvim-data/undodir"
else
    vim.opt.undodir = vim.fn.expand("$HOME") .. "/.vim/undodir"
end


-- Mudar o filetype do EJS para HTML
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.ejs",
    callback = function()
        vim.bo.filetype = "html"
    end,
})


-- Highlight quando está copiando (yanking) o texto
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Hightlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})


--[ [ KEYMAPS ] ]--

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw tree" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Mover a linha atual para baixo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Mover a linha atual para cima

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>") -- Mover para o painel/janela de cima
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>") -- Mover para o painel/janela de baixo
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>") -- Mover para o painel/janela da esquerda
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>") -- Mover para o painel/janela da direita

--[ [ STATUSLINE ] ]--
--[[
vim.api.nvim_set_hl('StatusMode',     { guifg = 'none',    guibg = 'none',    gui = 'bold' })
vim.api.nvim_set_hl('StatusType',     { guifg = '#1d2021', guibg = '#b16286', gui = 'none' })
vim.api.nvim_set_hl('StatusFile',     { guifg = '#1d2021', guibg = '#fabd2f', gui = 'none' })
vim.api.nvim_set_hl('StatusModified', { guifg = '#d3869b', guibg = '#1d2021', gui = 'none' })
vim.api.nvim_set_hl('StatusBuffer',   { guifg = '#1d2021', guibg = '#98971a', gui = 'none' })
vim.api.nvim_set_hl('StatusLocation', { guifg = '#1d2021', guibg = '#458588', gui = 'none' })
vim.api.nvim_set_hl('StatusPercent',  { guifg = '#ebdbb2', guibg = '#1d2021', gui = 'none' })
vim.api.nvim_set_hl('StatusNorm',     { guifg = '#ffffff', guibg = 'none',    gui = 'none' })

vim.opt.statusline = table.concat({
    "",
    " ",
    "%l",
    " ",
    -- " %#StatusType#",
    "  ",
    " ",
    "%Y",
    "  ",
    -- "%#StatusFile#",
    "<< ",
    "%F",
    " >>",
    -- "%#StatusModified#",
    " ",
    "%m",
    " ",
    -- "%#StatusNorm#",
    "%=",
    -- "%#StatusBuffer#",
    "<< ",
    "%n",
    " >>",
    -- "%#StatusLocation#",
    "<< ",
    "%l,%c",
    " >>",
    -- "%#StatusPercent#",
    "<< ",
    "%p%%  ",
    " >> "
})
-- ]]
