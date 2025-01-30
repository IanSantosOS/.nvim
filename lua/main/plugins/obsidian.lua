--[ [ REPOSITORIES ] ]--

-- https://github.com/epwalsh/obsidian.nvim
-- https://github.com/nvim-lua/plenary.nvim

--[ [ RETURN PLUGINS ] ]--

return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    enabled = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "markdown",
    -- Replace the line `ft = "markdown"` with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    opts = {
        ui = { enable = false },
        log_level = vim.log.levels.INFO,
        -- Optional, boolean or a function that takes a filename and returns a boolean.
        -- `true` indicates that you don't want obsidian.nvim to manage frontmatter.
        disable_frontmatter = false,

        workspaces = {
            {
                name = "personal",
                path = "~/Documents/notes/personal",
            },
            {
                name = "work",
                path = "~/Documents/notes/work",
            },
            {
                name = "school",
                path = "~/Documents/notes/school",
            },
        },
        -- daily_notes = {
        --     -- Optional, if you keep daily notes in a separate directory.
        --     folder = "notes/dailies",
        --     -- Optional, if you want to change the date format for the ID of daily notes.
        --     date_format = "%Y-%m-%d",
        --     -- Optional, if you want to change the date format of the default alias of daily notes.
        --     alias_format = "%B %-d, %Y",
        --     -- Optional, default tags to add to each new daily note created.
        --     default_tags = { "daily-notes" },
        --     -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        --     template = nil,
        -- },

        -- -- Optional, if you keep notes in a specific subdirectory of your vault.
        -- notes_subdir = "notes",
        -- new_notes_location = "notes_subdir",

        preferred_link_style = "wiki",

        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },

        -- Optional, for templates (see below).
        templates = {
            folder = "[99] Templates",
            -- date_format = "%Y-%m-%d",
            -- time_format = "%H:%M",
            -- -- A map for custom variables, the key should be the variable and the value a function
            -- substitutions = {},
        },

        -- -- Specify how to handle attachments.
        -- attachments = {
        --     -- The default folder to place images in via `:ObsidianPasteImg`.
        --     -- If this is a relative path it will be interpreted as relative to the vault root.
        --     -- You can always override this per image by passing a full path to the command instead of just a filename.
        --     img_folder = "assets/imgs", -- This is the default
        --     -- A function that determines the text to insert in the note when pasting an image.
        --     -- It takes two arguments, the `obsidian.Client` and an `obsidian.Path` to the image file.
        --     -- This is the default implementation.
        --     ---@return string
        --     img_text_func = function(client, path)
        --         path = client:vault_relative_path(path) or path
        --         return string.format("![%s](%s)", path.name, path)
        --     end,
        -- },

        picker = {
            -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
            name = "telescope.nvim",
            -- Optional, configure key mappings for the picker. These are the defaults.
            -- Not all pickers support all mappings.
            -- mappings = {
            --     -- Create a new note from your query.
            --     new = "<C-x>",
            --     -- Insert a link to the selected note.
            --     insert_link = "<C-l>",
            -- },
        },

        checkboxes = {
          -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
          [" "] = { char = " ", hl_group = "ObsidianTodo" },
          ["x"] = { char = " ", hl_group = "ObsidianDone" },
          ["-"] = { char = " ", hl_group = "ObsidianTilde" },
          ["!"] = { char = " ", hl_group = "ObsidianImportant" },
          [">"] = nil,
          ["~"] = nil,
        },

        mappings = {
            -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
            ["gf"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
            -- Toggle check-boxes.
            ["<leader>mc"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox({ " ", "x", "-", "!" })
                end,
                opts = { buffer = true },
            },
            -- Smart action depending on context, either follow link or toggle checkbox.
            ["<CR>"] = {
                action = function()
                    return require("obsidian").util.smart_action()
                end,
                opts = { buffer = true, expr = true },
            },
        },

        -- Optional, customize how note IDs are generated given an optional title.
        ---@param title string|?
        ---@return string
        note_id_func = function(title)
            -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
            -- In this case a note with the title 'My new note' will be given an ID that looks
            -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
            local suffix = ""
            if title ~= nil then
                -- If title is given, transform it into valid file name.
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                -- If title is nil, just add 4 random uppercase letters to the suffix.
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65, 90))
                end
            end
            return tostring(os.time()) .. "-" .. suffix
        end,

        -- Optional, customize how note file names are generated given the ID, target directory, and title.
        -- note_path_func = function(spec)
        --     -- This is equivalent to the default behavior.
        --     local path = spec.dir / tostring(spec.id)
        --     return path:with_suffix(".md")
        -- end,
        --
        -- -- Optional, customize how wiki links are formatted. You can set this to one of:
        -- --  * "use_alias_only", e.g. '[[Foo Bar]]'
        -- --  * "prepend_note_id", e.g. '[[foo-bar|Foo Bar]]'
        -- --  * "prepend_note_path", e.g. '[[foo-bar.md|Foo Bar]]'
        -- --  * "use_path_only", e.g. '[[foo-bar.md]]'
        -- -- Or you can set it to a function that takes a table of options and returns a string, like this:
        -- wiki_link_func = function(opts)
        --     return require("obsidian.util").wiki_link_id_prefix(opts)
        -- end,
        --
        -- -- Optional, customize how markdown links are formatted.
        -- markdown_link_func = function(opts)
        --     return require("obsidian.util").markdown_link(opts)
        -- end,
        --
        -- -- Optional, customize the default name or prefix when pasting images via `:ObsidianPasteImg`.
        -- ---@return string
        -- image_name_func = function()
        --     -- Prefix image names with timestamp.
        --     return string.format("%s-", os.time())
        -- end,
    },
}
