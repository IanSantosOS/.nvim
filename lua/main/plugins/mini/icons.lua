--[ [ REPOSITORY ] ]--

-- https://github.com/echasnovski/mini.icons

--[ [ RETURN PLUGIN ] ]--

return {
    'echasnovski/mini.icons',
    version = false,
    enabled = true,
    config = function()
        require('mini.icons').setup({
            {
                -- Icon style: 'glyph' or 'ascii'
                style = 'glyph',

                -- Customize per category. See `:h MiniIcons.config` for details.
                default   = {},
                directory = {},
                extension = {},
                file      = {},
                filetype  = {},
                lsp       = {},
                os        = {},
            }
        })
    end
}
