--[ [ REPOSITORIES ] ]--

-- https://github.com/nvim-lualine/lualine.nvim
-- https://github.com/nvim-tree/nvim-web-devicons

--[ [ EXTRA CONFIGURATION ] ]--

-- Shock9616: Custom Lualine component to show attached language server
-- https://github.com/Shock9616/nvim-config/blob/7893331b73086401d4282f50303473d0f07f14b9/lua/shock/plugins/lualine.lua
local clients_lsp = function()
    local bufnr = vim.api.nvim_get_current_buf()

    local clients = vim.lsp.get_clients({bufnr})
    if next(clients) == nil then
        return ""
    end

    local c = {}
    for _, client in pairs(clients) do
        table.insert(c, client.name)
    end
    return " " .. table.concat(c, " | ")
end

--[ [ RETURN PLUGINS ] ]--

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = "|", -- { left = '', right = ''},
                section_separators = "", -- { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = true,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    {
                        "branch",
                        icon = "",
                        separator = ""
                    },
                    {
                        "diff",
                        colored = false,
                        padding = { left = 0 , right = 1 }
                    },
                    "diagnostics",
                },
                lualine_c = {
                    {
                        "filetype",
                        colored = true,
                        icon_only = true,
                        separator = "",
                        padding = { left = 1, right = 0 }
                    },
                    {
                        "filename",
                        -- Path
                        -- 0. Just the filename
                        -- 1. Relative path
                        -- 2. Absolute path
                        -- 3. Absolute path, with tilde as the home directory
                        -- 4. Filename and parent dir
                        path = 0,
                        symbols = {
                            modified = '[+]',      -- Text to show when the file is modified.
                            readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                            unnamed = '[No Name]', -- Text to show for unnamed buffers.
                            newfile = '[New]',     -- Text to show for newly created file before first write
                        }
                    },
                },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { { clients_lsp, draw_empty = true } },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
            tabline = { },
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
