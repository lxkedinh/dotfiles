lvim.plugins = {
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    { "catppuccin/nvim" },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
                RGB = true,
                RRGGBB = true,
                RRGGBBAA = true,
                rgb_fn = true,
                hsl_fn = true,
                css = true,
                css_fn = true,
            })
        end,
    },
    { "pantharshit00/coc-prisma" },
    { "prisma/vim-prisma" },
}

require("catppuccin").setup {
    highlight_overrides = {
        mocha = function(mocha)
            return {
                LineNr = { fg = mocha.lavender },
                CursorLineNr = { fg = mocha.sapphire },
            }
        end,
    }
}
