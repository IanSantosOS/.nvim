--[ [ OBSERVATION ] ]

-- This directory is filled with just mini.nvim plugins, although I am utilising
-- standalone plugins of this package it is highly recommended to utilize the
-- complete library:
-- https://github.com/echasnovski/mini.nvim

--[ [ REPOSITORY ] ]--

-- mini.extra
-- https://github.com/echasnovski/mini.extra
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-extra.md

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
