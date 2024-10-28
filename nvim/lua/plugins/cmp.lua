return {
    {
        name = "nvim-cmp",
        dir = "@nvim_cmp@",
        event = { "InsertEnter", "CmdlineEnter" },
        opts = function()
            local cmp = require("cmp")
            return {
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-d>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "path" }
                }, {
                    { name = "buffer" },
                }),
            }
        end,
    },
    { name = "cmp-nvim-lsp", dir = "@cmp_nvim_lsp@", event = { "InsertEnter", "CmdlineEnter" } },
    { name = "cmp-buffer", dir = "@cmp_buffer@", event = "InsertEnter" },
    { name = "cmp-cmdline", dir = "@cmp_cmdline@", event = "CmdlineEnter" },
    { name = "cmp-path", dir = "@cmp_path@", event = { "InsertEnter", "CmdlineEnter" } },
}
