--[ [ REPOSITORY ] ]--

-- https://github.com/echasnovski/mini.indentscope

--[ [ RETURN PLUGIN ] ]--

return {
    "echasnovski/mini.indentscope",
    version = false,
    enabled = true,
    init = function()
        -- https://github.com/linkarzu/dotfiles-latest/blob/279e39e72c78e635801409c2f98ddd70614aa4f1/neovim/neobean/lua/plugins/mini-indentscope.lua
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "help",
                "alpha",
                "dashboard",
                "neo-tree",
                "Trouble",
                "trouble",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "lazyterm",
            },
            callback = function()
                vim.b.miniindentscope_disable = true
            end,
        })
    end,
    opts = function(_, opts)
        --[ Initialize opts ]

        opts = opts or {}

        --[ Opts configuration ]

        opts.draw = {
            delay = 50,
            animation = require("mini.indentscope").gen_animation.none(),
        }
        opts.mappings = {
            -- Textobjects
            object_scope = "ii",
            object_scope_with_border = "ai",

            -- Motions (jump to respective border line; if not present - body line)
            goto_top = "[i",
            goto_bottom = "]i",
        }
        opts.options = {
            -- Type of scope's border: which line(s) with smaller indent to
            -- categorize as border. Can be one of: 'both', 'top', 'bottom', 'none'.
            border = "both",

            -- Whether to use cursor column when computing reference indent.
            -- Useful to see incremental scopes with horizontal cursor movements
            indent_at_cursor = true,

            -- Maximum number of lines above or below within which scope is computed
            n_lines = 10000,

            -- Whether to first check input line to be a border of adjacent scope.
            -- Use it if you want to place cursor on function header to get scope of
            -- its body.
            try_as_border = true,
        }
        -- opts.symbol = "▏"
        -- opts.symbol = "│"
        opts.symbol = "╎"
    end,
}
