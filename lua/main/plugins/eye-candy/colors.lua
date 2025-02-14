--[ [ REPOSITORIES ] ]--

-- https://github.com/ribru17/bamboo.nvim
-- https://github.com/catppuccin/nvim
-- https://github.com/nickkadutskyi/jb.nvim
-- https://github.com/rebelot/kanagawa.nvim
-- https://github.com/navarasu/onedark.nvim
-- https://github.com/rose-pine/neovim

--[ [ RETURN PLUGINS ] ]--

return {
    {
        "ribru17/bamboo.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("bamboo").setup({
                -- Main options --
                -- NOTE: to use the light theme, set `vim.o.background = 'light'`
                style = "vulgaris",                                       -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
                toggle_style_key = nil,                                   -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
                toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
                transparent = false,                                      -- Show/hide background
                dim_inactive = false,                                     -- Dim inactive windows/buffers
                term_colors = true,                                       -- Change terminal color as per the selected theme style
                ending_tildes = false,                                    -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false,                             -- reverse item kind highlights in cmp menu

                -- Change code style --
                -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
                -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
                code_style = {
                    comments = { italic = false },
                    conditionals = { italic = false },
                    keywords = { italic = false },
                    functions = { italic = false },
                    namespaces = { italic = false },
                    parameters = { italic = false },
                    strings = { italic = false },
                    variables = { italic = false },
                },

                -- Custom Highlights --
                colors = {
                    bg_yellow = "#448867",
                },
                hightlights = {
                    -- This didn't work so I had to alter the color bg_yellow
                    -- ['@comment'] = { fg = '#448867' },
                },

                -- Plugins Config --
                diagnostics = {
                    darker = true,     -- darker colors for diagnostic
                    undercurl = true,  -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            })

            require("bamboo").load()
        end,
    },
    {
        "catppuccin/nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false,
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false,        -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false,        -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15,      -- percentage of the shade to apply to the inactive window
                },
                no_italic = true,           -- Force no italic
                no_bold = false,            -- Force no bold
                no_underline = false,
            })

            -- require("catppuccin").load()
        end,
    },
    {
        "nickkadutskyi/jb.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme jb")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            compile = false,
            undercurl = true,
            commentStyle = { italic = false },
            functionStyle = {},
            keywordStyle = { italic = false },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            theme = "wave",    -- Load "wave" theme when 'background' option is not set
            background = {     -- map the value of 'background' option to a theme
                dark = "wave", -- try "dragon" !
                light = "lotus",
            },
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            -- vim.cmd("colorscheme kanagawa")
        end,
    },
    {
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "warm",               -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            transparent = false,          -- Show/hide background
            term_colors = true,           -- Change terminal color as per the selected theme style
            ending_tildes = true,         -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- toggle theme style ---
            toggle_style_key = nil,                                                     -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

            -- Change code style ---
            -- Options are italic, bold, underline, none
            -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
            code_style = {
                comments = "none",
                keywords = "none",
                functions = "none",
                strings = "none",
                variables = "none",
            },

            -- Lualine options --
            lualine = {
                transparent = false, -- lualine center bar transparency
            },

            -- Custom Highlights --
            colors = {},     -- Override default colors
            highlights = {}, -- Override highlight groups

            -- Plugins Config --
            diagnostics = {
                darker = true,     -- darker colors for diagnostic
                undercurl = true,  -- use undercurl instead of underline for diagnostics
                background = true, -- use background color for virtual text
            },
        },
        config = function(_, opts)
            require("onedark").setup(opts)
            -- require("onedark").load()
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        lazy = false,
        config = function()
            require("rose-pine").setup({
                variant = "moon",
                styles = {
                    italic = false,
                    transparency = false,
                },
            })

            -- vim.cmd("colorscheme rose-pine")
        end,
    },
}
