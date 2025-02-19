--[ [ REPOSITORIES ] ]--

-- noice.nvim
-- https://github.com/folke/noice.nvim

-- nui.nvim
-- https://github.com/MunifTanjim/nui.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
            },
        },
        presets = {
            bottom_search = false,        -- if true this use a classic bottom cmdline for search
            command_palette = true,       -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = true,            -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = true,        -- add a border to hover docs and signature help
        },
        notify = {
            -- Noice can be used as `vim.notify` so you can route any notification like other messages
            -- Notification messages have their level and other properties set.
            -- event is always "notify" and kind can be any log level as a string
            -- The default routes will forward notifications to nvim-notify
            -- Benefit of using Noice for this is the routing and consistent history view
            enabled = false,
            view = "notify",
        },
        views = {
            -- This sets the position for the search popup that shows up with / or with :
            cmdline_popup = {
                position = {
                    row = "40%",
                    col = "50%",
                },
            },
            mini = {
                timeout = 5000,
                align = "center",
                position = {
                    -- Centers messages top to bottom
                    row = "95%",
                    -- Aligns messages to the far right
                    col = "100%",
                },
            },
        },
    },
}
