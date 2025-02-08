return {
    name = "blink.cmp",
    dir = "@blink_cmp@",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
        keymap = { preset = "default" },

        appearance = {
            use_nvim_cmp_as_default = false,
            nerd_font_variant = "mono"
        },

        completion = {
            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },
            menu = {
                draw = {
                    treesitter = { "lsp" },
                },
            },
            ghost_text = {
                enabled = true,
            },
        },

        sources = {
            default = { "lsp", "path", "buffer" },
        },
    },
}
