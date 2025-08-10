--[ [ KEYMAPS FOR PLUGINS ] ]--

local set = vim.keymap.set

--[ Indent Blankline ]--

set('n', '<leader>it', "<CMD>IBLToggle<CR>", { desc = "[P] Toggle indent-blankline"})

--[ Nvim Notify ]--

set('n', '<leader>nn', require('notify').dismiss, { desc = "[P] Dismiss notification"})

--[ Inc Rename ]--

-- set("n", "<leader>rn", ":IncRename ", { desc = "[P] Use IncRename" })

set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
end, {
    expr = true,
    desc = "[P] Use IncRename",
})

--[ Auto Save ]--

set('n', "<leader>as", "<CMD>ASToggle<CR>", { desc = "[P] Toggle auto-save" })

--[ Stay Centered ]--

set({ 'n', 'v' }, '<leader>tc', function()
    require('stay-centered').toggle()
    vim.notify("Toggled stay-centered", vim.log.levels.INFO, { title = "stay-centered" })
end, { desc = '[P] Toggle stay-centered.nvim' })

--[ UndoTree ]--

set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "[P] Toggle undotree" })

--[ Harpoon 2 ]--

local harpoon = require("harpoon")

set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "[P] Add current buffer to the Harpoon list" })
set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[P] Toggle Harpoon quick menu" })

set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "[P] Jump to Harpoon slot 1" })
set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "[P] Jump to Harpoon slot 2" })
set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "[P] Jump to Harpoon slot 3" })
set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "[P] Jump to Harpoon slot 4" })
set("n", "<leader>h5", function() harpoon:list():select(5) end, { desc = "[P] Jump to Harpoon slot 5" })
set("n", "<leader>h6", function() harpoon:list():select(6) end, { desc = "[P] Jump to Harpoon slot 6" })
set("n", "<leader>h7", function() harpoon:list():select(7) end, { desc = "[P] Jump to Harpoon slot 7" })
set("n", "<leader>h8", function() harpoon:list():select(8) end, { desc = "[P] Jump to Harpoon slot 8" })
set("n", "<leader>h9", function() harpoon:list():select(9) end, { desc = "[P] Jump to Harpoon slot 9" })

set("n", "<leader>h!", function() harpoon:list():replace_at(1) end, { desc = "[P] Replace Harpoon slot 1 with the current buffer" })
set("n", "<leader>h@", function() harpoon:list():replace_at(2) end, { desc = "[P] Replace Harpoon slot 2 with the current buffer" })
set("n", "<leader>h#", function() harpoon:list():replace_at(3) end, { desc = "[P] Replace Harpoon slot 3 with the current buffer" })
set("n", "<leader>h$", function() harpoon:list():replace_at(4) end, { desc = "[P] Replace Harpoon slot 4 with the current buffer" })
set("n", "<leader>h%", function() harpoon:list():replace_at(5) end, { desc = "[P] Replace Harpoon slot 5 with the current buffer" })
set("n", "<leader>h¨", function() harpoon:list():replace_at(6) end, { desc = "[P] Replace Harpoon slot 6 with the current buffer" })
set("n", "<leader>h&", function() harpoon:list():replace_at(7) end, { desc = "[P] Replace Harpoon slot 7 with the current buffer" })
set("n", "<leader>h*", function() harpoon:list():replace_at(8) end, { desc = "[P] Replace Harpoon slot 8 with the current buffer" })
set("n", "<leader>h(", function() harpoon:list():replace_at(9) end, { desc = "[P] Replace Harpoon slot 9 with the current buffer" })

--[ Vim Tmux Navigator ]--

set("n", "<C-k>", "<CMD>TmuxNavigateUp<CR>",    { desc = "[P] Move to the top panel" })
set("n", "<C-j>", "<CMD>TmuxNavigateDown<CR>",  { desc = "[P] Move to the bottom panel" })
set("n", "<C-h>", "<CMD>TmuxNavigateLeft<CR>",  { desc = "[P] Move to the left panel" })
set("n", "<C-l>", "<CMD>TmuxNavigateRight<CR>", { desc = "[P] Move to the right panel" })

set("n", "<C-Up>",    "<CMD>TmuxNavigateUp<CR>",    { desc = "[P] Move to the top panel" })
set("n", "<C-Down>",  "<CMD>TmuxNavigateDown<CR>",  { desc = "[P] Move to the bottom panel" })
set("n", "<C-Left>",  "<CMD>TmuxNavigateLeft<CR>",  { desc = "[P] Move to the left panel" })
set("n", "<C-Right>", "<CMD>TmuxNavigateRight<CR>", { desc = "[P] Move to the right panel" })

--[ Git Signs ]--

set("n", "<leader>gp", "<CMD>Gitsigns preview_hunk<CR>", { desc = "[P] Preview the diff for the current Git hunk" })
set("n", "<leader>gb", "<CMD>Gitsigns toggle_current_line_blame<CR>", { desc = "[P] Toggle Git blame annotation for the current line" })

--[ Mini.Files ]--

-- set('n', '<leader>fe', ':lua MiniFiles.open()<CR>', { silent = true, desc = "[P] Open mini.files" })

-- https://github.com/linkarzu/dotfiles-latest/blob/7b2c7fcf88762d24b1ee816aa8ff8e115d32d57e/neovim/neobean/lua/plugins/mini-files.lua
-- [[
-- Open the current working directory
set('n', '<leader>fe', function()
    require("mini.files").open(vim.uv.cwd(), true)
end, { desc = "[P] Open mini.files (current working directory)" })

-- Open the directory of the file currently being edited
-- If the file doesn't exist because you maybe switched to a new git branch
-- open the current working directory
set('n', '<leader>fE', function()
    local buf_name = vim.api.nvim_buf_get_name(0)
    local dir_name = vim.fn.fnamemodify(buf_name, ":p:h")
    if vim.fn.filereadable(buf_name) == 1 then
        require("mini.files").open(buf_name, true)
    elseif vim.fn.isdirectory(dir_name) == 1 then
        require("mini.files").open(dir_name, true)
    else
        require("mini.files").open(vim.uv.cwd(), true)
    end
end, { desc = "[P] Open mini.files (current file)" })
-- ]]

--[ Cellular Automaton ]--

set("n", "<leader>fm1", "<CMD>CellularAutomaton make_it_rain<CR>", { desc = "[P] CellularAutomaton | Make it Rain" })
set("n", "<leader>fm2", "<CMD>CellularAutomaton scramble<CR>",     { desc = "[P] CellularAutomaton | Scramble"     })
set("n", "<leader>fm3", "<CMD>CellularAutomaton game_of_life<CR>", { desc = "[P] CellularAutomaton | Game of Life" })
set("n", "<leader>fm4", "<CMD>CellularAutomaton slide<CR>",        { desc = "[P] CellularAutomaton | Slide"        })

--[ Vim Pencil ]--

set('n', '<leader>mt', '<CMD>PencilToggle<CR>', { desc = "[P] Toggle vim pencil" })

--[ Markdown Preview ]--

set('n', '<leader>mp', '<CMD>MarkdownPreviewToggle<CR>', { desc = "[P] Toggle markdown preview" })

--[ Render Markdown ]--

set('n', '<leader>mr', '<CMD>RenderMarkdown toggle<CR>', { desc = "[P] Toggle markdown render" })

--[ Telescope ]--

local telescope = require('telescope.builtin')
local frecency = require('telescope').extensions.frecency

-- This keymap below was changed with the `main/telescope/multigrep.lua` file
-- set('n', '<leader>fl', builtin.live_grep, { desc = "[P] Telescope Live Grep" })
require('main.telescope.multigrep').setup()

-- set('n', '<leader>fp', telescope.find_files,  { desc = "[P] Telescope Find Files" })
set('n', '<leader>fp', frecency.frecency,     { desc = "[P] Telescope Find Files (With Frecency)" })
set('n', '<leader>fg', telescope.git_files,   { desc = "[P] Telescope Git Files"  })

set('n', '<leader>bb',  telescope.buffers,    { desc = "[P] Telescope Buffers" })

set('n', '<leader>pc', telescope.colorscheme, { desc = "[P] Telescope Colorscheme" })
set('n', '<leader>pk', telescope.keymaps,     { desc = "[P] Telescope Keymaps"     })
set('n', '<leader>ph', telescope.help_tags,   { desc = "[P] Telescope Help Tags"   })
set('n', '<leader>pf', telescope.current_buffer_fuzzy_find, { desc = "[P] Telescope Current Buffer FZF" })

-- --[ Mini.Pick ]--
--
-- -- set('n', '<leader>fg', "<CMD>Pick files tool='git'<CR>", { desc = "[P] Pick Git" })
-- set('n', '<leader>fg', ":lua MiniExtra.pickers.git_files()", { silent = true, desc = "[P] Pick Git Files" })
-- set('n', '<leader>fp', "<CMD>Pick files<CR>",     { desc = "[P] Pick Files"     })
-- set('n', '<leader>fl', "<CMD>Pick grep_live<CR>", { desc = "[P] Pick Grep Live" })
--
-- set('n', '<leader>bb', "<CMD>Pick buffers<CR>",   { desc = "[P] Pick Buffers"   })
--
-- set('n', '<leader>ph', "<CMD>Pick help<CR>",      { desc = "[P] Pick Help"      })
