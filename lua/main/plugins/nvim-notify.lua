--[ [ REPOSITORY ] ]--

-- https://github.com/rcarriga/nvim-notify

--[ [ RETURN PLUGIN ] ]--

return {
    "rcarriga/nvim-notify",
    config = function()
        require("notify").setup({
            background_colour = "NotifyBackground",
            fps = 30,
            icons = {
                DEBUG = "",
                ERROR = "",
                INFO = "",
                TRACE = "✎",
                WARN = "",
            },
            level = 2,
            minimum_width = 50,
            render = "default",
            stages = "static",
            time_formats = {
                notification = "%T",
                notification_history = "%FT%T",
            },
            timeout = 10000,
            top_down = true, -- true (top) | false (bottom)
        })

        vim.notify = require("notify")
    end,
}
