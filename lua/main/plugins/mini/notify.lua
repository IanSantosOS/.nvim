--[ [ REPOSITORY ] ]--

-- https://github.com/echasnovski/mini.notify

--[ [ RETURN PLUGIN ] ]--

return {
    "echasnovski/mini.notify",
    version = false,
    enabled = false,
    config = function()
        require("mini.notify").setup({
            -- Content management
            content = {
                -- Function which formats the notification message
                -- By default prepends message with notification time
                format = nil,

                -- Function which orders notification array from most to least important
                -- By default orders first by level and then by update timestamp
                sort = function(notif_arr)
                    table.sort(notif_arr, function(a, b)
                        return a.ts_update > b.ts_update
                    end)
                    return notif_arr
                end,
            },

            -- Notifications about LSP progress
            lsp_progress = {
                -- Whether to enable showing
                enable = true,

                -- Duration (in ms) of how long last message should be shown
                duration_last = 1000,
            },

            -- Window options
            window = {
                -- Floating window config
                config = {},

                -- Maximum window width as share (between 0 and 1) of available columns
                max_width_share = 0.382,

                -- Value of 'winblend' option
                winblend = 25,
            },
        })

        local opts = {
            ERROR = { duration = 10000 },
        }
        vim.notify = require("mini.notify").make_notify(opts)
    end,
}
