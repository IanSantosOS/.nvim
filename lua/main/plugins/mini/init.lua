--[ [ OBSERVATION ] ]

-- This directory is filled with just mini.nvim plugins, although I am utilising
-- standalone plugins of this package it is highly recommended to utilize the
-- complete library:
-- https://github.com/echasnovski/mini.nvim

--[ [ REPOSITORY ] ]--

-- https://github.com/echasnovski/mini.extra

--[ [ RETURN PLUGIN ] ]--

return {
    {
        'echasnovski/mini.extra',
        version = false,
        config = function()
            require('mini.extra').setup()
        end
    },
}
