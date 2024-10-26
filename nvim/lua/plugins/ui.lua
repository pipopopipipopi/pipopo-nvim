return {
    {
        name = "noice.nvim",
        dir = "@noice_nvim@",
        event = "VeryLazy",
        opts = {
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
                opts = {},
                format = {
                    cmdline = { pattern = "^:", icon = "", lang = "vim" },
                    search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
                    search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
                    filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
                    lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
                    help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
                    input = {},
                },
            },
        },
        dependencies = { name = "nui.nvim", dir = "@nui_nvim@" },
    },

    {
        name = "nvim-scrollbar",
        dir = "@nvim_scrollbar@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
    },
}
