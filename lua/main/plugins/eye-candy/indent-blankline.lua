--[ [ REPOSITORY ] ]--

-- https://github.com/lukas-reineke/indent-blankline.nvim

--[ [ RETURN PLUGIN ] ]--

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    init = function() end,
    opts = function(_, opts)
        --[ Rainbow Highlight ]

        -- I don't utilize rainbow highlight so this variable below is unused.
        -- If you want to use rainbow highlight go to the `opts.indent` and
        -- change the highligh value: `highlight = highlight`

        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        local hooks = require("ibl.hooks")

        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#56B6C2" })
        end)

        --[ Initialize opts ]

        opts = opts or {}

        --[ Opts configuration ]

        opts.indent = {
            -- char = "▏",
            -- char = "│",
            -- char = "",
            char = "╎",
            -- highlight = highlight, -- Uncomment this if you want rainbow indent lines
            smart_indent_cap = true,
        }
        opts.scope = {
            enabled = false,
            show_start = false,
            show_end = false,
        }
    end,
}
