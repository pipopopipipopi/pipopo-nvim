return {
    {
        name = "heirline.nvim",
        dir = "@heirline_nvim@",
        event = { "BufReadPost", "BufNewFile" },
        opts = function()
            return {
                statusline = require("plugins.heirline.statusline"),
                tabline = require("plugins.heirline.tabline"),
                opts = {
                    colors = {
                        -- bg = "#191726",
                        bg = "NONE",
                        fg = "#cdcbe0",
                        black = "#393552",
                        red = "#eb6f92",
                        green = "#a3be8c",
                        yellow = "#f6c177",
                        blue = "#569fba",
                        magenta = "#c4a7e7",
                        cyan = "#9ccfd8",
                        white = "#e0def4",
                        orange = "#ea9a97",
                        pink = "#eb98c3",
                        comment = "#817c9c"
                    },
                },
            }
        end,
    },
}
