--[ [ REPOSITORIES ] ]--

-- Telescope
-- https://github.com/nvim-telescope/telescope.nvim
-- https://github.com/nvim-telescope/telescope-ui-select.nvim
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim

-- Plenary
-- https://github.com/nvim-lua/plenary.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim',
        {
            'nvim-telescope/telescope-frecency.nvim',
            version = "*",
        },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    config = function()
        require('telescope').setup({
            pickers = {
                colorscheme = {
                    theme = "dropdown",
                },
                current_buffer_fuzzy_find = {
                    theme = "dropdown",
                    previewer = false,
                },
                help_tags = {
                    theme = "dropdown",
                    previewer = false,
                },
            },
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown({})
                },
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                                                    -- the default case_mode is "smart_case"
                }
            }
        })

        require('telescope').load_extension('fzf')
        require('telescope').load_extension('frecency')
        require('telescope').load_extension('ui-select')
    end
}
