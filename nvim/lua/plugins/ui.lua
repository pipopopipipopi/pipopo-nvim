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
    },
    { name = "nui.nvim", dir = "@nui_nvim@" },

    {
        name = "nvim-scrollbar",
        dir = "@nvim_scrollbar@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
    },

    {
        name = "dashboard-nvim",
        dir = "@dashboard_nvim@",
        lazy = false,
        opts = function ()
            local logo = {
                "                                                                       ",
                "                                                                       ",
                "                                                                       ",
                "                                                                       ",
                "                                                                     ",
                "       ████ ██████           █████      ██                     ",
                "      ███████████             █████                             ",
                "      █████████ ███████████████████ ███   ███████████   ",
                "     █████████  ███    █████████████ █████ ██████████████   ",
                "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
                "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
                " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
                "                                                                       ",
                "                                                                       ",
                "                                                                       ",
                "                                                                       ",
            }

            local opts = {
                theme = "doom",
                config = {
                    header = logo,
                    center = {
                        { action = "Telescope find_files", desc = " Find File", icon = " ", key = "f" },
                        { action = "ene", desc = " New File", icon = " ", key = "n" },
                        { action = "Telescope oldfiles", desc = " Recent Files", icon = " ", key = "r" },
                        { action = "Telescope live_grep", desc = " Find Text", icon = " ", key = "g" },
                        { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
                        { action = "qa", desc = " Quit", icon = " ", key = "q" },
                    },
                    footer = function ()
                        local stats = require("lazy").stats()
                        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                        return { "Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                    end,
                },
            }

            return opts

        end,
    },
}
