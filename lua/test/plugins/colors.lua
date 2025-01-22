return {
    {
        'echasnovski/mini.base16',
        version = false,
        enabled = false,
        config = function()
            require("mini.base16").setup({
                palette = {
                    base00 = '#112641',
                    base01 = '#3a475e',
                    base02 = '#606b81',
                    base03 = '#8691a7',
                    base04 = '#d5dc81',
                    base05 = '#e2e98f',
                    base06 = '#eff69c',
                    base07 = '#fcffaa',
                    base08 = '#ffcfa0',
                    base09 = '#cc7e46',
                    base0A = '#46a436',
                    base0B = '#9ff895',
                    base0C = '#ca6ecf',
                    base0D = '#42f7ff',
                    base0E = '#ffc4ff',
                    base0F = '#00a5c5',
                },
                use_cterm = true,
                plugins = { default = true },
            })
        end
    },
    {
        "ribru17/bamboo.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("bamboo").setup({
                -- Main options --
                -- NOTE: to use the light theme, set `vim.o.background = 'light'`
                style = "vulgaris", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
                toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
                toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
                transparent = false, -- Show/hide background
                dim_inactive = false, -- Dim inactive windows/buffers
                term_colors = true, -- Change terminal color as per the selected theme style
                ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

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
                    bg_yellow = "#448867"
                },
                hightlights = {
                    -- This didn't work so I had to alter the color bg_yellow
                    -- ['@comment'] = { fg = '#448867' },
                },

                -- Plugins Config --
                diagnostics = {
                    darker = false, -- darker colors for diagnostic
                    undercurl = true, -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            })

            require("bamboo").load()
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                variant = "moon",
                styles = {
                    italic = false,
                    transparency = false
                },
            })

            -- vim.cmd("colorscheme rose-pine") -- .load() don't work
        end,
    },
    {
        "catppuccin/nvim",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false,
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = true, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false,
            })

            -- require("catppuccin").load()
        end
    },
}
