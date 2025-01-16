return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim',
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

        local builtin = require('telescope.builtin')

        -- This keymap below was changed with the
        -- `main/telescope/multigrep.lua` file
        --
        -- vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
        require('main.telescope.multigrep').setup()

        vim.keymap.set('n', '<leader>fp', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

        vim.keymap.set('n', '<leader>b', builtin.buffers, {})

        vim.keymap.set('n', '<leader>sc', builtin.colorscheme, {})
        vim.keymap.set('n', '<leader>sf', builtin.current_buffer_fuzzy_find, {})
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, {})
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})

        require('telescope').load_extension('ui-select')
        require('telescope').load_extension('fzf')
    end
}
