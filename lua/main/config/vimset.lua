--[ [ VIMSET ] ]--

--[ Desabling builtin plugins ]--

-- https://neovim.discourse.group/t/how-to-disable-builtin-plugins/787/6
local builtin_plugins = {
    'netrw',
    'netrwPlugin',
    -- 'netrwSettings',
    -- 'netrwFileHandlers',
    -- 'netrw_gitignore',
    -- '2html_plugin',
    -- 'getscript',
    -- 'getscriptPlugin',
    -- 'gzip',
}

for i = 1, #builtin_plugins do
  vim.g[ 'loaded_' .. builtin_plugins[i] ] = true
end


--[ Config ]--

vim.opt.compatible = false        -- Disable VI compatibility mode

vim.opt.termguicolors = true      -- Enable 24-bit RGB colors in the terminal
vim.opt.updatetime = 50           -- Faster update time

-- vim.g.netrw_banner = 0            -- Hide netrw banner
-- vim.g.netrw_altv = 1              -- Open splits to the right
-- vim.g.netrw_liststyle = 3         -- Use tree-style view
-- vim.g.netrw_winsize = 20          -- Window size

vim.cmd('set path+=**')           -- Search for files recursively in subdirectories

vim.opt.splitbelow = true         -- Open horizontal splits below the current window
vim.opt.splitright = true         -- Open vertical splits to the right of the current window

vim.opt.syntax = "off"            -- Disable syntax highlighting

vim.opt.encoding = "utf-8"        -- Set internal encoding to UTF-8
vim.opt.fileencoding = "utf-8"    -- Save files with UTF-8 encoding

vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers

vim.opt.signcolumn = "yes"        -- Always show the sign column
-- vim.opt.colorcolumn = '80'     -- Highlight column 80 for line length indication
                                  -- I prefer activating it with a keybinding instead

vim.opt.hidden = true             -- Keep buffers in memory when abandoned

vim.opt.breakindent = true        -- Maintain indentation on wrapped lines

vim.opt.timeoutlen = 1000         -- Set key sequence timeout in milliseconds

vim.opt.completeopt = 'menuone,noinsert,noselect,popup' -- Configure completion behavior

vim.opt.allowrevins = true        -- Allow <Ctrl-_> in Insert mode (enter reverse mode)

vim.opt.wrap = false              -- Disable line wrapping
vim.opt.scrolloff = 8             -- Keep 8 lines above and below the cursor while scrolling
vim.opt.sidescrolloff = 8         -- Keep 8 columns to the side when scrolling horizontally

vim.opt.smarttab = true           -- Use shiftwidth when inserting tabs
vim.opt.expandtab = true          -- Convert tabs to spaces
vim.opt.softtabstop = 4           -- Number of spaces for a tab when editing
vim.opt.shiftwidth = 4            -- Set indentation width to 4 spaces
vim.opt.tabstop = 4               -- Display a tab as 4 spaces

vim.opt.autoindent = true         -- Enable automatic indentation based on previous line
vim.opt.smartindent = true        -- Automatically insert indentation in code blocks
vim.opt.cindent = true            -- Enable C/C++ style indentation

vim.opt.ignorecase = true         -- Case-insensitive search
vim.opt.smartcase = true          -- Case-sensitive if uppercase is used
vim.opt.incsearch = true          -- Show matches as you type
vim.opt.hlsearch = true           -- Highlight search results

vim.opt.showcmd = true            -- Display command-line
vim.opt.cmdheight = 1             -- Command-line height
vim.opt.showmode = false          -- Hide mode display inside cmdline (e.g., -- INSERT --)

vim.opt.laststatus = 3            -- Always show the status line and ONLY the last window

vim.o.wildmenu = true             -- Enable cmdline completion menu

vim.opt.swapfile = false          -- Disable swap files
vim.opt.backup = false            -- Disable backup files
vim.opt.writebackup = false       -- Disable write backup
vim.opt.undofile = true           -- Enable persistent undo

-- Set undo file directory
if vim.fn.has("win32") == 1 then
    vim.opt.undodir = vim.fn.expand("$HOME") .. "/AppData/Local/nvim-data/undodir"
else
    vim.opt.undodir = vim.fn.expand("$HOME") .. "/.config/nvim/undodir" -- probably I will change this location in the future
end


--[ AutoCMD ]--

-- EJS equals to html filetype
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.ejs",
    callback = function()
        vim.bo.filetype = "html"
    end,
})


-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Hightlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})


-- Numbers on the side of the nvim builtin terminal are weird
vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("custom-term-opn", { clear = true }),
    callback = function ()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end
})
