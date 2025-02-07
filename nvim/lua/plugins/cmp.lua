return {
    name = "blink-cmp",
    dir = "@blink_cmp@",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
        keymap = { preset = "enter" },
        appearance = {
            use_nvim_cmp_as_default = false,
            nerd_font_variant = "mono"
        },

        sources = {
            default = { "lsp", "path", "buffer" },
        },
    },
}
