--[ [ REPOSITORY ] ]--

-- mini.hipatterns
-- https://github.com/echasnovski/mini.hipatterns
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-hipatterns.md

--[ [ EXTRA CONFIGURATION ] ]--

-- Highlight words

local words = {
    red = '#ff0000',
    green = '#00ff00',
    blue = '#0000ff'
}

local word_color_group = function(_, match)
    local hex = words[match]
    if hex == nil then return nil end
    return MiniHipatterns.compute_hex_color_group(hex, 'bg')
end

-- Mini Extra

local hi_words = require('mini.extra').gen_highlighter.words

--[ [ RETURN PLUGIN ] ]--

return {
    "echasnovski/mini.hipatterns",
    version = false,
    enabled = true,
    config = function()
        local hipatterns = require("mini.hipatterns")

        hipatterns.setup(
            {
                -- Table with highlighters (see |MiniHipatterns.config| for more details).
                -- Nothing is defined by default. Add manually for visible effect.
                highlighters = {
                    -- Highlight hex color string (`#rrggbb`)
                    hex_color = hipatterns.gen_highlighter.hex_color(),
                    word_color = {
                        { pattern = '%S+', group = word_color_group },
                        { pattern = '%f[%s]%s*$', group = 'Error' },
                    },
                    fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
                    hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
                    todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
                    note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
                },

                -- Delays (in ms) defining asynchronous highlighting process
                delay = {
                    -- How much to wait for update after every text change
                    text_change = 200,

                    -- How much to wait for update after window scroll
                    scroll = 50,
                },
            }
        )
    end,
}
