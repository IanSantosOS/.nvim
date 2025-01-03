return {
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
                transparent = true, -- Show/hide background
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

                -- Lualine options --
                lualine = {
                    transparent = true -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {}, -- Override default colors
                hightlights = {}, -- Override hightlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = false, -- darker colors for diagnostic
                    undercurl = true, -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            })

            require("bamboo").load() -- run the colorscheme
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
                    transparency = true
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
                transparent_background = true,
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
