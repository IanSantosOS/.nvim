--[ [ KEYMAPS ] ]--

vim.g.mapleader = " "
vim.g.maplocalleader = " "
local set = vim.keymap.set

-- vim.keymap.set("n", "Q", "<nop>")

--[ Config Related ]--

set("n", "<leader><leader>L", "<CMD>source %<CR>",       { desc = "[N] Execute the entire file (vim or lua)" })
set("n", "<leader><leader>l", "<CMD>.lua<CR>",           { desc = "[N] Execute the current line in lua"      })
set("v", "<leader><leader>l", ":lua<CR>", { silent = true, desc = "[N] Execute the selected code in lua"     })

--[ Quit ]--

set({ "n", "v" }, "<leader>qq", "<CMD>q<CR>",  { desc = "[N] Quit"          })
set({ "n", "v" }, "<leader>wq", "<CMD>wq<CR>", { desc = "[N] Write and Quit"})

--[ Leaves Insert Mode ]--

set("i", "jk", "<ESC>", { desc = "[N] Leaves insert mode" })
set("i", "kj", "<ESC>", { desc = "[N] Leaves insert mode" })

--[ Quickfix ]--

set("n", "<leader>j", "<CMD>cnext<CR>", { desc = "[N] Jump to the next item in the Quickfix List" })
set("n", "<leader>k", "<CMD>cprev<CR>", { desc = "[N] Jump to the previous item in the Quickfix List" })

--[ File ]--

set("n", "<leader>fe", "<CMD>Lex!<CR>", { desc = "[N] Open the Netrw tree" })
set("n", "<leader>fp", ":find ",        { desc = "[N] Search file"         })

--[ Navigation ]--

set("n", "J", "mzJ`z", { desc = "[N] Join lines while keeping the cursor position centered" })

set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "[N] Move the current selection to the line below" })
set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "[N] Move the current selection to the line above" })

set({ "n", "v" }, "<C-u>", "<C-u>zz", { desc = "[N] Scroll up half a screen while keeping the cursor centered" })
set({ "n", "v" }, "<C-d>", "<C-d>zz", { desc = "[N] Scroll down half a screen while keeping the cursor centered" })
-- set({ "n", "v" }, "k",     "kzz",     { desc = "[N] Scroll up while keeping the cursor centered" })
-- set({ "n", "v" }, "j",     "jzz",     { desc = "[N] Scroll down while keeping the cursor centered" })

set({ "n", "v" }, "n",     "nzzzv",   { desc = "[N] Go to the next search result while keeping the cursor centered and unfolding if needed" })
set({ "n", "v" }, "N",     "Nzzzv",   { desc = "[N] Go to the previous search result while keeping the cursor centered and unfolding if needed" })

--[ Buffer ]--

set("n",               "<leader>bb", ":buffer ",           { desc = "[N] Search buffer" })
set("n",               "<leader>bd", "<CMD>bdelete<CR>",   { desc = "[N] Deletes current buffer"  })
set({ "n", "v", "i" }, "<C-s>",      "<CMD>update<CR>",    { desc = "[N] Saves the current buffer" })

--[ Tab ]--

set("n", "<leader>tn", "<CMD>tabnew<CR>",      { desc = "[N] Creates new tab"       })
set("n", "<leader>to", "<CMD>tabonly<CR>",     { desc = "[N] Closes other tabs"     })
set("n", "<leader>tx", "<CMD>tabclose<CR>",    { desc = "[N] Closes current tab"    })
set("n", "<leader>tm", ":tabmove ",            { desc = "[N] Moves current tab"     })
set("n", "<leader>pt", "<CMD>tabprevious<CR>", { desc = "[N] Moves to next tab"     })
set("n", "<leader>nt", "<CMD>tabnext<CR>",     { desc = "[N] Moves to previous tab" })
set("n", "<leader>te", ':tabedit <C-r>=escape(expand("%:p:h"), " ")<CR>/', { desc = "[N] Opens a new tab with the current buffer's path" })

--[ LSP ]--

-- Maybe this should be in the `keys_plugins.lua` file.
set("n", "<leader>lsp", "<CMD>LspRestart<CR>", { desc = "[N] Restart the LSP server" })

set("n", "<leader>ff", vim.lsp.buf.format,      { desc = "[N] Format the current buffer using LSP"                           })
set("n", "<leader>dh", vim.lsp.buf.hover,       { desc = "[N] Show hover information for the symbol under the cursor"        })
set("n", "<leader>df", vim.lsp.buf.definition,  { desc = "[N] Go to the definition of the symbol under the cursor"           })
set("n", "<leader>dr", vim.lsp.buf.references,  { desc = "[N] Show all references to the symbol under the cursor"            })
set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[N] Show available code actions for the current line or selection" })

--[ Clipboard ]--

set("x",          "<leader>p",  [["_dP]], { desc = "[N] Paste over selected text without replacing the default register (avoids overwriting copied text)" })
set("n",          "<leader>Y",  [["+Y]],  { desc = "[N] Yank the current line into the system clipboard" })
set({ "n", "v" }, "<leader>y",  [["+y]],  { desc = "[N] Yank selected text into the system clipboard" })
set({ "n", "v" }, "<leader>P",  [["+p]],  { desc = "[N] Paste from the system clipboard" })
set({ "n", "v" }, "<leader>dd", [["_d]],  { desc = "[N] Delete without copying into any register (avoids overwriting the clipboard)" })

--[ Search and Replace ]--

set(
    "n",
    "<leader>ss",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "[N] Search and replace the word under the cursor globally (Case Insensitive)" }
)
set(
    "n",
    "<leader>sS",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left><Left>]],
    { desc = "[N] Search and replace the word under the cursor globally (Case Sensitive)" }
)

--[ Window/Panel ]--

set({ "n", "v" }, "<leader>w", "<C-w>", { desc = "[N] Window prefix command" })
set({ "n", "v" }, "<leader>wh", "<CMD>vsplit<CR>", { desc = "[N] Window split horizontally" })
set({ "n", "v" }, "<leader>wv", "<CMD>split<CR>",  { desc = "[N] Window split vertically" })

set({ "n", "v" }, "<C-M-k>", "<CMD>resize +5<CR>", { desc = "[N] Resize top/bottom +5" })
set({ "n", "v" }, "<C-M-j>", "<CMD>resize -5<CR>", { desc = "[N] Resize top/bottom -5" })
set({ "n", "v" }, "<C-M-h>", "<CMD>vertical resize -10<CR>", { desc = "[N] Resize left/right -10" })
set({ "n", "v" }, "<C-M-l>", "<CMD>vertical resize +10<CR>", { desc = "[N] Resize left/right +10" })

set({ "n", "v" }, "<C-M-Up>",    "<CMD>resize +5<CR>", { desc = "[N] Resize top/bottom +5" })
set({ "n", "v" }, "<C-M-Down>",  "<CMD>resize -5<CR>", { desc = "[N] Resize top/bottom -5" })
set({ "n", "v" }, "<C-M-Left>",  "<CMD>vertical resize -10<CR>", { desc = "[N] Resize left/right -10" })
set({ "n", "v" }, "<C-M-Right>", "<CMD>vertical resize +10<CR>", { desc = "[N] Resize left/right +10" })

set({ "n", "v" }, "<C-k>", "<CMD>wincmd k<CR>", { desc = "[N] Move to the top panel"    })
set({ "n", "v" }, "<C-j>", "<CMD>wincmd j<CR>", { desc = "[N] Move to the bottom panel" })
set({ "n", "v" }, "<C-h>", "<CMD>wincmd h<CR>", { desc = "[N] Move to the left panel"   })
set({ "n", "v" }, "<C-l>", "<CMD>wincmd l<CR>", { desc = "[N] Move to the right panel"  })

set({ "n", "v" }, "<C-Up>",    "<CMD>wincmd k<CR>", { desc = "[N] Move to the top panel"    })
set({ "n", "v" }, "<C-Down>",  "<CMD>wincmd j<CR>", { desc = "[N] Move to the bottom panel" })
set({ "n", "v" }, "<C-Left>",  "<CMD>wincmd h<CR>", { desc = "[N] Move to the left panel"   })
set({ "n", "v" }, "<C-Right>", "<CMD>wincmd l<CR>", { desc = "[N] Move to the right panel"  })

--[ Auto Close ]--

set("i", "/*", "/**/<Left><Left>") -- auto closes /**/
set("i", '"', '""<Left>')          -- auto closes ""
set("i", "'", "''<Left>")          -- auto closes ''
-- set("i", "`", "``<Left>")          -- auto closes ``
set("i", "(", "()<Left>")          -- auto closes ()
set("i", "[", "[]<Left>")          -- auto closes []
set("i", "{", "{}<Left>")          -- auto closes {}
set("i", "<", "<><Left>")          -- auto closes <>

--[ Others ]--

set({ "n", "v" }, "<leader>/", "<CMD>let @/=''<CR>", { desc = "[N] Clears the search highlight" })

set({ "n", "v" }, "<leader>t8", "<CMD>lua ToggleColorColumn()<CR>", { desc = "[N] Toggle highlight column 80" })

--[ Functions ]--

function ToggleColorColumn()
    if vim.wo.colorcolumn == "80" then
        vim.wo.colorcolumn = "0"
    else
        vim.wo.colorcolumn = "80"
    end
end


-- For now I prefer to utilize tmux to handle this
-- maybe in the future I go back to this
-- set("n", "<leader>tt", "<CMD>lua OpenTerminal()<CR>", { desc = "Open terminal" })

-- function OpenTerminal()
--     vim.cmd.new()
--     vim.cmd.term()
--     vim.cmd.wincmd("J")
--     vim.api.nvim_win_set_height(0, 15)
-- end
