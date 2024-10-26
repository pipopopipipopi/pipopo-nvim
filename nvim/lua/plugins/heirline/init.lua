return {
    {
        name = "heirline.nvim",
        dir = "@heirline_nvim@",
        event = "BufEnter",
        opts = function()
            return {
                statusline = require("plugins.heirline.statusline"),
                tabline = require("plugins.heirline.tabline"),
            }
        end,
    },
}
