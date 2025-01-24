--[ [ REPOSITORIES ] ]--

-- https://github.com/echasnovski/mini.pairs
-- https://github.com/echasnovski/mini.extra

--[ [ RETURN PLUGIN ] ]--

return {
    {
        'echasnovski/mini.pairs',
        version = false,
        config = function()
            require('mini.pairs').setup()
        end
    },
    {
        'echasnovski/mini.extra',
        version = false,
        config = function()
            require('mini.extra').setup()
        end
    },
}
