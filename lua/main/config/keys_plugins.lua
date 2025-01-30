--[ [ KEYMAPS FOR PLUGINS ] ]--

local set = vim.keymap.set

--[ Hardtime ]--

set("n", "<leader>ht", "<CMD>Hardtime toggle<CR>", { desc = "Toggle Hardtime" })

--[ Obsidian ]--

-- set("v", "<CR>", function()
--     local start_line, end_line = vim.fn.line("'<"), vim.fn.line("'>")
--
--     for line = start_line, end_line do
--         vim.cmd(line .. 'lua require("obsidian").util.toggle_checkbox()')
--     end
-- end, { silent = true })

set("n", "<leader>mf", "<CMD>ObsidianQuickSwitch<CR>", { desc = "Quickly access my notes" })

set("n", "<leader>mt", "<CMD>ObsidianTags<CR>", { desc = "Search notes by tags" })

--[ Auto Save ]--

set('n', "<leader>as", ":ASToggle<CR>", { silent = true, desc = "Toggle auto-save" })

--[ Stay Centered ]--

set({ 'n', 'v' }, '<leader>tc', function()
    require('stay-centered').toggle()
    vim.notify("Toggled stay-centered", vim.log.levels.INFO, { title = "stay-centered" })
end, { desc = 'Toggle stay-centered.nvim' })

--[ UndoTree ]--

set("n", "<leader>u", vim.cmd.UndotreeToggle)

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

-- set('n', '<leader>fe', ':lua MiniFiles.open()<CR>', { silent = true })

-- https://github.com/linkarzu/dotfiles-latest/blob/7b2c7fcf88762d24b1ee816aa8ff8e115d32d57e/neovim/neobean/lua/plugins/mini-files.lua
-- [[

-- Open the directory of the file currently being edited
-- If the file doesn't exist because you maybe switched to a new git branch
-- open the current working directory
set('n', '<leader>fe', function()
    local buf_name = vim.api.nvim_buf_get_name(0)
    local dir_name = vim.fn.fnamemodify(buf_name, ":p:h")
    if vim.fn.filereadable(buf_name) == 1 then
        require("mini.files").open(buf_name, true)
    elseif vim.fn.isdirectory(dir_name) == 1 then
        require("mini.files").open(dir_name, true)
    else
        require("mini.files").open(vim.uv.cwd(), true)
    end
end, {
    -- silent = true,
    desc = "Open mini.files (Directory of Current File or CWD if not exists)",
})

-- Open the current working directory
set('n', '<leader>fE', function()
    require("mini.files").open(vim.uv.cwd(), true)
end, {
    -- silent = true,
    desc = "Open mini.files (cwd)",
})
-- ]]

--[ Cellular Automaton ]--

set("n", "<leader>fm1", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Animação de caracteres caindo" })
set("n", "<leader>fm2", "<cmd>CellularAutomaton scramble<CR>", { desc = "Animação de caracteres embaralhados" })
set("n", "<leader>fm3", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Animação simulando o jogo da vida (muito doido)" })
set("n", "<leader>fm4", "<cmd>CellularAutomaton slide<CR>", { desc = "Animação de slide da esquerda para a direita" })

--[ Markdown Preview ]--

set('n', '<leader>mp', ':MarkdownPreviewToggle<CR>', { desc = "Toggle markdown preview" })

--[ Render Markdown ]--

set('n', '<leader>mr', ':RenderMarkdown toggle<CR>', { desc = "Toggle markdown render" })

--[ Telescope ]--

local telescope = require('telescope.builtin')

-- This keymap below was changed with the
-- `main/telescope/multigrep.lua` file
--
-- set('n', '<leader>fl', builtin.live_grep, {})
require('main.telescope.multigrep').setup()

set('n', '<leader>fp', telescope.find_files, {})
set('n', '<leader>fg', telescope.git_files, {})

set('n', '<leader>b',  telescope.buffers, {})

set('n', '<leader>pc', telescope.colorscheme, {})
set('n', '<leader>pf', telescope.current_buffer_fuzzy_find, {})
set('n', '<leader>pk', telescope.keymaps, {})
set('n', '<leader>ph', telescope.help_tags, {})

-- --[ Mini.Pick ]--
--
-- set('n', '<leader>fp', ":Pick files<CR>", { silent = true })
-- -- set('n', '<leader>fg', ":Pick files tool='git'<CR>", { silent = true })
-- set('n', '<leader>fg', ":lua MiniExtra.pickers.git_files()", { silent = true })
-- set('n', '<leader>fl', ":Pick grep_live<CR>", { silent = true })
--
-- set('n', '<leader>b', ":Pick buffers<CR>", { silent = true })
--
-- set('n', '<leader>ph', ":Pick help<CR>", { silent = true })
