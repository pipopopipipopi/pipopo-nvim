return {
    {
        name = "nvim-lspconfig",
        dir = "@nvim_lspconfig@"
        event = { "BufRead", "BufNewFile" },
        opts = {
            servers = {
                lua_ls.setup({})
                nil_ls.setup({})
                rust_analyzer.setup({})
                pyright.setup({})
            },
        },
    },
}
