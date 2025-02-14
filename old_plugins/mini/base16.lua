--[ [ REPOSITORY ] ]--

-- mini.base16
-- https://github.com/echasnovski/mini.base16

--[ [ RETURN PLUGIN ] ]--

return {
    "echasnovski/mini.base16",
    version = false,
    priority = 1000,
    lazy = false,
    enabled = false,
    config = function()
        require("mini.base16").setup({
            palette = {
                base00 = "#112641",
                base01 = "#3a475e",
                base02 = "#606b81",
                base03 = "#8691a7",
                base04 = "#d5dc81",
                base05 = "#e2e98f",
                base06 = "#eff69c",
                base07 = "#fcffaa",
                base08 = "#ffcfa0",
                base09 = "#cc7e46",
                base0A = "#46a436",
                base0B = "#9ff895",
                base0C = "#ca6ecf",
                base0D = "#42f7ff",
                base0E = "#ffc4ff",
                base0F = "#00a5c5",
            },
            use_cterm = true,
            plugins = { default = true },
        })
    end,
}
