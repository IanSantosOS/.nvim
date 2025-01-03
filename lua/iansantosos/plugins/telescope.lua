return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim'
    },
    config = function()
        local dropdown = require('telescope.themes').get_dropdown({})

        require('telescope').setup({
            extensions = { ['ui-select'] = { dropdown } }
        })

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fp', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

        vim.keymap.set('n', '<leader>b', builtin.buffers, {})

        vim.keymap.set('n', '<leader>sc', function() builtin.colorscheme(dropdown) end, {})
        vim.keymap.set('n', '<leader>sf', function() builtin.current_buffer_fuzzy_find(dropdown) end, {})
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, {})

        require('telescope').load_extension('ui-select')
    end
}
