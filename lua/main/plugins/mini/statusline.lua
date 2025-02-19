--[ [ REPOSITORY ] ]--

-- mini.statusline
-- https://github.com/echasnovski/mini.statusline
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md

--[ [ EXTRA CONFIGURATION ] ]--

--[ [ RETURN PLUGIN ] ]--

return {
    "echasnovski/mini.statusline",
    version = false,
    enabled = true,
    opts = function(_, opts)
        --[ Initialize opts ]

        opts = opts or {}

        --[ Statusline configuration ]

        local MiniStatusline = require('mini.statusline')

        local active_content = function()
            local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
            local git           = MiniStatusline.section_git({ trunc_width = 40 })
            local diff          = MiniStatusline.section_diff({ trunc_width = 75 })
            local diagnostics   = MiniStatusline.section_diagnostics({ trunc_width = 75 })
            -- local lsp           = MiniStatusline.section_lsp({ trunc_width = 75 })
            local filename      = "%f%m%r"
            local fileinfo      = MiniStatusline.section_fileinfo({ trunc_width = 2000 })
                                  .. " | %{&fileencoding?&fileencoding:&encoding} %{&fileformat}"
            local location      = "%l/%c [%p%%]"
            -- Noice alredy shows the search count
            -- local search        = MiniStatusline.section_searchcount({ trunc_width = 75 })

            return MiniStatusline.combine_groups({
                { hl = mode_hl,                 strings = { mode } },
                { hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics } },
                '%<', -- Mark general truncate point
                { hl = 'MiniStatuslineFilename', strings = { filename } },
                '%=', -- End left alignment
                { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
                { hl = mode_hl,                  strings = { location } },
            })
        end

        local inactive_content = function()
            local filename = "%f%m%r%h"
            local location = MiniStatusline.section_location({ trunc_width = 75 })

            return MiniStatusline.combine_groups({
                { hl = "MiniStatuslineFileinfo", strings = { filename } },
                { hl = "MiniStatuslineFilename", strings = { '%=' } },
                { hl = "MiniStatuslineFileinfo", strings = { location } },
            })
        end

        --[ Opts configuration ]

        -- Content of statusline as functions which return statusline string. See
        -- `:h statusline` and code of default contents (used instead of `nil`).
        opts.content = {
            -- Content for active window
            active = active_content,
            -- Content for inactive window(s)
            inactive = inactive_content,
        }

        -- Whether to use icons by default
        opts.use_icons = true

        -- Whether to set Vim's settings for statusline (make it always shown)
        opts.set_vim_settings = true
    end,
}
