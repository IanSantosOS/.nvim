--[ [ REPOSITORY ] ]--

-- https://github.com/okuuva/auto-save.nvim/

-- This is a fork of the original repository:
-- https://github.com/Pocco81/auto-save.nvim

--[ [ EXTRA CONFIGURATION ] ]--

local autosave_group = vim.api.nvim_create_augroup("autosave", {})

vim.api.nvim_create_autocmd("User", {
    pattern = "AutoSaveWritePost",
    group = autosave_group,
    callback = function(opts)
        if opts.data.saved_buffer ~= nil then
            local filename = vim.fn.expand("%:t")
            vim.notify("saved " .. filename, vim.log.levels.INFO, { title = "auto-save" })
            -- I use mini.notify so the time when the file was saved
            -- alredy appears what means I don't need "vim.fn.strftime('%H:%M:%S')"
            -- in this case anymore
        end
    end,
})

--[ [ RETURN PLUGIN ] ]--

return {
    "okuuva/auto-save.nvim",
    version = "*",
    enabled = true,
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
        enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
        trigger_events = { -- See :h events
            immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend" }, -- vim events that trigger an immediate save
            defer_save = { "InsertLeave", "TextChanged" }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
            cancel_deferred_save = { "InsertEnter" }, -- vim events that cancel a pending deferred save
        },
        -- function that takes the buffer handle and determines whether to save the current buffer or not
        -- return true: if buffer is ok to be saved
        -- return false: if it's not ok to be saved
        -- if set to `nil` then no specific condition is applied
        condition = function(buf)
            -- Skip autosave if you're in an active snippet
            if require("luasnip").in_snippet() then
                return false
            end

            -- Do not save when I'm in visual mode
            local mode = vim.fn.mode()
            if mode == "v" or mode == "V" then
                return false
            end

            -- Don't auto save on these buffers
            local filetypes = {
                "mysql",
            }
            local buf_filetype = vim.bo[buf].filetype
            if vim.list_contains(filetypes, buf_filetype) then
                return false
            end

            -- Don't save special-buffers
            if vim.fn.getbufvar(buf, "&buftype") ~= "" then
                return false
            end

            return true
        end,
        write_all_buffers = false, -- write all buffers when the current one meets `condition`
        noautocmd = false, -- do not execute autocmds when saving
        lockmarks = false, -- lock marks when saving, see `:h lockmarks` for more details
        debounce_delay = 1000, -- delay after which a pending save is executed
        -- log debug messages to 'auto-save.log' file in neovim cache directory, set to `true` to enable
        debug = false,
    },
}
