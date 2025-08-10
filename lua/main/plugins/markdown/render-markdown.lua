--[ [ REPOSITORY ] ]--

-- https://github.com/MeanderingProgrammer/render-markdown.nvim

--[ [ RETURN PLUGIN ] ]--

return {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    opts = {
        -- Whether Markdown should be rendered by default or not
        enabled = true,
        -- Filetypes this plugin will run on
        -- obs: If you are using the vimwiki plugin do this:
        -- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#vimwiki
        -- file_types = { 'markdown', 'vimwiki' },
        file_types = { "markdown" },
        -- render modes, see `:help mode()`
        -- setting to true will set all modes
        render_modes = true, -- { "n", "c", "t" },
        -- Pre configured settings that will attempt to mimic various target
        -- user experiences. Any user provided settings will take precedence.
        --  obsidian: mimic Obsidian UI
        --  lazy:     will attempt to stay up to date with LazyVim configuration
        --  none:     does nothing
        preset = "none",
        -- anti-conceal: markdown render will not take effect on the same row of
        -- your cursor (regardless of mode).
        anti_conceal = {
            enabled = true,
            -- Which elements to always show, ignoring anti conceal behavior. Values can either be booleans
            -- to fix the behavior or string lists representing modes where anti conceal behavior will be
            -- ignored. Possible keys are:
            --  head_icon, head_background, head_border, code_language, code_background, code_border
            --  dash, bullet, check_icon, check_scope, quote, table_border, callout, link, sign
            ignore = {
                code_background = true,
                sign = true,
            },
        },
        heading = {
            enabled = true,
            render_modes = false,
            sign = true,
            signs = { "󰫎 " },
            -- Determines how icons fill the available space:
            --  right:   '#'s are concealed and icon is appended to right side
            --  inline:  '#'s are concealed and icon is inlined on left side
            --  overlay: icon is left padded with spaces and inserted on left hiding any additional '#'
            position = "overlay",
            icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
            -- Width of the heading background:
            --  block: width of the heading text
            --  full:  full width of the window
            -- Can also be a list of the above values in which case the 'level' is used
            -- to index into the list using a clamp
            width = "block",
            min_width = 80, -- if the heading is 'block'
            border = true,
            -- Always use virtual lines for heading borders instead of attempting to use empty lines
            border_virtual = true,
            -- Highlight the start of the border using the foreground highlight
            border_prefix = false,
            -- Used above heading for border
            above = "━", -- '▄',
            -- Used below heading for border
            below = "━", -- '▀',
            backgrounds = {
                "RenderMarkdownH1Bg", -- "Headline1Bg",
                "RenderMarkdownH2Bg", -- "Headline2Bg",
                "RenderMarkdownH3Bg", -- "Headline3Bg",
                "RenderMarkdownH4Bg", -- "Headline4Bg",
                "RenderMarkdownH5Bg", -- "Headline5Bg",
                "RenderMarkdownH6Bg", -- "Headline6Bg",
            },
            foregrounds = {
                "RenderMarkdownH1", -- "Headline1Fg",
                "RenderMarkdownH2", -- "Headline2Fg",
                "RenderMarkdownH3", -- "Headline3Fg",
                "RenderMarkdownH4", -- "Headline4Fg",
                "RenderMarkdownH5", -- "Headline5Fg",
                "RenderMarkdownH6", -- "Headline6Fg",
            },
        },
        paragraph = {
            enabled = true,
            render_modes = false,
            left_margin = 0,
            min_width = 0,
        },
        code = {
            enabled = true,
            render_modes = false,
            sign = true,
            -- Determines how code blocks & inline code are rendered:
            --  none:     disables all rendering
            --  normal:   adds highlight group to code blocks & inline code, adds padding to code blocks
            --  language: adds language icon to sign column if enabled and icon + name above code blocks
            --  full:     normal + language
            style = "full",
            position = "left",
            width = "block",
            min_width = 80,
            -- There is an annoying bug that occur when utilizing padding and
            -- identation, if you want to deactivate padding change the value
            -- of the two line below to 0
            left_pad = 2,
            language_pad = 2,
            language_name = true,
            -- Determines how the top / bottom of code block are rendered:
            --  none:  do not render a border
            --  thick: use the same highlight as the code body
            --  thin:  when lines are empty overlay the above & below icons
            border = "thin",
            -- Used above heading for border
            above = "▄",
            -- Used below heading for border
            below = "▀",
            highlight = "RenderMarkdownCode",
            -- Highlight for language, overrides icon provider value
            highlight_language = nil,
            -- Highlight for inline code
            highlight_inline = "RenderMarkdownCodeInline",
        },
        dash = {
            enabled = true,
            render_modes = false,
            icon = "-",
            width = 80, -- "full"
            left_margin = 0,
            highlight = "RenderMarkdownDash",
        },
        bullet = {
            enabled = true,
            render_modes = false,
            icons = { "●", "○", "◆", "◇" },
            -- Padding to add to the left of bullet point
            left_pad = 2,
            -- Padding to add to the right of bullet point
            right_pad = 0,
            -- Highlight for the bullet icon
            highlight = "RenderMarkdownBullet",
        },
        checkbox = {
            enabled = true,
            render_modes = false,
            position = "inline",
            unchecked = {
                -- Replaces '[ ]' of 'task_list_marker_unchecked'
                icon = "   ", -- '  󰄱 ',
                -- Highlight for the unchecked icon
                highlight = "RenderMarkdownUnchecked",
                -- Highlight for item associated with unchecked checkbox
                scope_highlight = "RenderMarkdownUnchecked", -- nil
            },
            checked = {
                -- Replaces '[x]' of 'task_list_marker_checked'
                icon = "   ", -- "  󰱒 ",
                -- Highlight for the checked icon
                highlight = "RenderMarkdownChecked",
                -- Highlight for item associated with checked checkbox
                scope_highlight = "RenderMarkdownChecked", -- nil
            },
            -- Define custom checkbox states, more involved as they are not part of the markdown grammar
            -- As a result this requires neovim >= 0.10.0 since it relies on 'inline' extmarks
            -- Can specify as many additional states as you like following the 'todo' pattern below
            --   The key in this case 'todo' is for healthcheck and to allow users to change its values
            --   'raw':             Matched against the raw text of a 'shortcut_link'
            --   'rendered':        Replaces the 'raw' value when rendering
            --   'highlight':       Highlight for the 'rendered' icon
            --   'scope_highlight': Highlight for item associated with custom checkbox
            custom = {
                todo = {
                    raw = "[-]",
                    rendered = "   ", -- '  󰥔 ',
                    highlight = "RenderMarkdownTodo",
                    scope_highlight = "RenderMarkdownTodo", -- nil
                },
                important = {
                    raw = "[!]",
                    rendered = "   ", -- '   '
                    highlight = "RenderMarkdownHint",
                    scope_highlight = "RenderMarkdownHint", -- nil
                },
            },
        },
        quote = {
            enabled = true,
            render_modes = false,
            icon = "▋",
            repeat_linebreak = true,
            highlight = "RenderMarkdownQuote",
        },
        pipe_table = {
            enabled = true,
            render_modes = false,
            -- Pre configured settings largely for setting table border easier
            --  heavy:  use thicker border characters
            --  double: use double line border characters
            --  round:  use round border corners
            --  none:   does nothing
            preset = "round",
            -- Determines how the table as a whole is rendered:
            --  none:   disables all rendering
            --  normal: applies the 'cell' style rendering to each row of the table
            --  full:   normal + a top & bottom line that fill out the table when lengths match
            style = "full",
            -- Determines how individual cells of a table are rendered:
            --  overlay: writes completely over the table, removing conceal behavior and highlights
            --  raw:     replaces only the '|' characters in each row, leaving the cells unmodified
            --  padded:  raw + cells are padded to maximum visual width for each column
            --  trimmed: padded except empty space is subtracted from visual width calculation
            cell = "trimmed",
            -- Characters used to replace table border
            -- stylua: ignore
            -- border = {
            --     '┌', '┬', '┐',
            --     '├', '┼', '┤',
            --     '└', '┴', '┘',
            --     '│', '─',
            -- },
            -- Gets placed in delimiter row for each column, position is based on alignment
            alignment_indicator = '━',
            -- Highlight for table heading, delimiter, and the line above
            head = "RenderMarkdownTableHead",
            -- Highlight for everything else, main table rows and the line below
            row = "RenderMarkdownTableRow",
            -- Highlight for inline padding used to add back concealed space
            filler = "RenderMarkdownTableFill",
        },
        callout = {
            -- Github Default
            note      = { raw = "[!NOTE]",      rendered = "󰋽 Note",      highlight = "RenderMarkdownInfo"    },
            tip       = { raw = "[!TIP]",       rendered = "󰌶 Tip",       highlight = "RenderMarkdownSuccess" },
            important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownHint"    },
            warning   = { raw = "[!WARNING]",   rendered = "󰀪 Warning",   highlight = "RenderMarkdownWarn"    },
            caution   = { raw = "[!CAUTION]",   rendered = "󰳦 Caution",   highlight = "RenderMarkdownError"   },

            -- Others
            -- Obsidian: https://help.obsidian.md/Editing+and+formatting/Callouts
            abstract  = { raw = "[!ABSTRACT]",  rendered = "󰨸 Abstract",  highlight = "RenderMarkdownInfo"    },
            summary   = { raw = "[!SUMMARY]",   rendered = "󰨸 Summary",   highlight = "RenderMarkdownInfo"    },
            tldr      = { raw = "[!TLDR]",      rendered = "󰨸 Tldr",      highlight = "RenderMarkdownInfo"    },
            info      = { raw = "[!INFO]",      rendered = "󰋽 Info",      highlight = "RenderMarkdownInfo"    },
            todo      = { raw = "[!TODO]",      rendered = "󰗡 Todo",      highlight = "RenderMarkdownInfo"    },
            hint      = { raw = "[!HINT]",      rendered = "󰌶 Hint",      highlight = "RenderMarkdownSuccess" },
            success   = { raw = "[!SUCCESS]",   rendered = "󰄬 Success",   highlight = "RenderMarkdownSuccess" },
            check     = { raw = "[!CHECK]",     rendered = "󰄬 Check",     highlight = "RenderMarkdownSuccess" },
            done      = { raw = "[!DONE]",      rendered = "󰄬 Done",      highlight = "RenderMarkdownSuccess" },
            question  = { raw = "[!QUESTION]",  rendered = "󰘥 Question",  highlight = "RenderMarkdownWarn"    },
            help      = { raw = "[!HELP]",      rendered = "󰘥 Help",      highlight = "RenderMarkdownWarn"    },
            faq       = { raw = "[!FAQ]",       rendered = "󰘥 Faq",       highlight = "RenderMarkdownWarn"    },
            attention = { raw = "[!ATTENTION]", rendered = "󰀪 Attention", highlight = "RenderMarkdownWarn"    },
            failure   = { raw = "[!FAILURE]",   rendered = "󰅖 Failure",   highlight = "RenderMarkdownError"   },
            fail      = { raw = "[!FAIL]",      rendered = "󰅖 Fail",      highlight = "RenderMarkdownError"   },
            missing   = { raw = "[!MISSING]",   rendered = "󰅖 Missing",   highlight = "RenderMarkdownError"   },
            danger    = { raw = "[!DANGER]",    rendered = "󱐌 Danger",    highlight = "RenderMarkdownError"   },
            error     = { raw = "[!ERROR]",     rendered = "󱐌 Error",     highlight = "RenderMarkdownError"   },
            bug       = { raw = "[!BUG]",       rendered = "󰨰 Bug",       highlight = "RenderMarkdownError"   },
            example   = { raw = "[!EXAMPLE]",   rendered = "󰉹 Example",   highlight = "RenderMarkdownHint"    },
            quote     = { raw = "[!QUOTE]",     rendered = "󱆨 Quote",     highlight = "RenderMarkdownQuote"   },
            cite      = { raw = "[!CITE]",      rendered = "󱆨 Cite",      highlight = "RenderMarkdownQuote"   },
        },
        link = {
            enabled = true,
            render_modes = false,
            -- How to handle footnote links, start with a '^'
            footnote = {
                -- Replace value with superscript equivalent
                superscript = true,
                -- Added before link content when converting to superscript
                prefix = "",
                -- Added after link content when converting to superscript
                suffix = "",
            },
            image = "󰥶 ",
            email = " ",
            hyperlink = "󰌷 ", -- '󰌹 '
            highlight = "RenderMarkdownLink",
            wiki = { icon = "󱗖 ", highlight = "RenderMarkdownWikiLink" },
            -- Define custom destination patterns so icons can quickly inform you of what a link
            -- contains. Applies to 'inline_link', 'uri_autolink', and wikilink nodes. When multiple
            -- patterns match a link the one with the longer pattern is used.
            -- Can specify as many additional values as you like following the 'web' pattern below
            --   The key in this case 'web' is for healthcheck and to allow users to change its values
            --   'pattern':   Matched against the destination text see :h lua-pattern
            --   'icon':      Gets inlined before the link text
            --   'highlight': Optional highlight for the 'icon', uses fallback highlight if not provided
            custom = {
                web           = { pattern = "^http",              icon = "󰖟 " },
                youtube       = { pattern = "youtube%.com",       icon = "󰗃 " },
                github        = { pattern = "github%.com",        icon = "󰊤 " },
                gitlab        = { pattern = "gitlab%.com",        icon = "󰮠 " },
                neovim        = { pattern = "neovim%.io",         icon = " " },
                discord       = { pattern = "discord%.com",       icon = "󰙯 " },
                reddit        = { pattern = "reddit%.com",        icon = "󰑍 " },
                ubuntu        = { pattern = "ubuntu%.com",        icon = " " },
                archlinux     = { pattern = "archlinux%.org",     icon = " " },
                stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌 " },
            },
        },
        sign = {
            enabled = false,
            highlight = "RenderMarkdownSign",
        },
        -- Mimics Obsidian inline highlights when content is surrounded by double equals
        -- The equals on both ends are concealed and the inner content is highlighted
        inline_highlight = {
            -- Turn on / off inline highlight rendering
            enabled = true,
            -- Additional modes to render inline highlights
            render_modes = false,
            -- Applies to background of surrounded text
            highlight = "RenderMarkdownInlineHighlight",
        },
        indent = {
            -- Turn on / off org-indent-mode
            enabled = false,
            render_modes = false,
            per_level = 2,
            -- Heading levels <= this value will not be indented
            -- Use 0 to begin indenting from the very first level
            skip_level = 2,
            -- Do not indent heading titles, only the body
            skip_heading = false,
        },
        html = {
            enabled = true,
            render_modes = false,
            comment = {
                conceal = false,
            },
        },
        win_options = {
            conceallevel = {
                default = vim.api.nvim_get_option_value("conceallevel", {}),
                rendered = 3,
            },
            -- Repeat Line Break
            -- https://github.com/MeanderingProgrammer/render-markdown.nvim/wiki/BlockQuotes#repeat-line-break-working
            showbreak = { default = "", rendered = "  " },
            breakindent = { default = false, rendered = true },
            breakindentopt = { default = "", rendered = "" },
            concealcursor = {
                -- Used when not being rendered, get user setting
                default = vim.api.nvim_get_option_value("concealcursor", {}),
                -- Used when being rendered, disable concealing text in all modes
                rendered = "",
            },
        },
    },
}
