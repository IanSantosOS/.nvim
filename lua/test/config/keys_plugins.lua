--[ [ KEYMAPS FOR PLUGINS ] ]--

vim.g.mapleader = " "
local set = vim.keymap.set

--[ Harpoon 2 ]--

local harpoon = require("harpoon")

set("n", "<leader>ha", function() harpoon:list():add() end)
set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

set("n", "<leader>h1", function() harpoon:list():select(1) end)
set("n", "<leader>h2", function() harpoon:list():select(2) end)
set("n", "<leader>h3", function() harpoon:list():select(3) end)
set("n", "<leader>h4", function() harpoon:list():select(4) end)
set("n", "<leader>h5", function() harpoon:list():select(5) end)
set("n", "<leader>h6", function() harpoon:list():select(6) end)
set("n", "<leader>h7", function() harpoon:list():select(7) end)
set("n", "<leader>h8", function() harpoon:list():select(8) end)
set("n", "<leader>h9", function() harpoon:list():select(9) end)

set("n", "<leader>h!", function() harpoon:list():replace_at(1) end)
set("n", "<leader>h@", function() harpoon:list():replace_at(2) end)
set("n", "<leader>h#", function() harpoon:list():replace_at(3) end)
set("n", "<leader>h$", function() harpoon:list():replace_at(4) end)
set("n", "<leader>h%", function() harpoon:list():replace_at(5) end)
set("n", "<leader>h¨", function() harpoon:list():replace_at(6) end)
set("n", "<leader>h&", function() harpoon:list():replace_at(7) end)
set("n", "<leader>h*", function() harpoon:list():replace_at(8) end)
set("n", "<leader>h(", function() harpoon:list():replace_at(9) end)

--[ Vim Tmux Navigator ]--

set("n", "<C-k>", ":TmuxNavigateUp<CR>",    { silent = true, desc = "Mover para o painel de cima" })
set("n", "<C-j>", ":TmuxNavigateDown<CR>",  { silent = true, desc = "Mover para o painel de baixo" })
set("n", "<C-h>", ":TmuxNavigateLeft<CR>",  { silent = true, desc = "Mover para o painel da esquerda" })
set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true, desc = "Mover para o painel da direita" })

set("n", "<C-Up>",    ":TmuxNavigateUp<CR>",    { silent = true, desc = "Mover para o painel de cima" })
set("n", "<C-Down>",  ":TmuxNavigateDown<CR>",  { silent = true, desc = "Mover para o painel de baixo" })
set("n", "<C-Left>",  ":TmuxNavigateLeft<CR>",  { silent = true, desc = "Mover para o painel da esquerda" })
set("n", "<C-Right>", ":TmuxNavigateRight<CR>", { silent = true, desc = "Mover para o painel da direita" })

--[ Git Signs ]--

set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

--[ Mini.Files ]--

set('n', '<leader>fe', ':lua MiniFiles.open()<CR>', { silent = true })

--[ Cellular Automaton ]--

set("n", "<leader>fm1", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Animação de caracteres caindo" })
set("n", "<leader>fm2", "<cmd>CellularAutomaton scramble<CR>", { desc = "Animação de caracteres embaralhados" })
set("n", "<leader>fm3", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Animação simulando o jogo da vida (muito doido)" })
set("n", "<leader>fm4", "<cmd>CellularAutomaton slide<CR>", { desc = "Animação de slide da esquerda para a direita" })

--[ Render Markdown ]--

set('n', '<leader>mp', ':RenderMarkdown toggle<CR>', { desc = "Toggle markdown render" })

--[ Mini.Pick ]--

set('n', '<leader>fp', ":Pick files<CR>", { silent = true })
-- set('n', '<leader>fg', ":Pick files tool='git'<CR>", { silent = true })
set('n', '<leader>fg', ":lua MiniExtra.pickers.git_files()", { silent = true })
set('n', '<leader>fl', ":Pick grep_live<CR>", { silent = true })

set('n', '<leader>b', ":Pick buffers<CR>", { silent = true })

set('n', '<leader>sh', ":Pick help<CR>", { silent = true })
