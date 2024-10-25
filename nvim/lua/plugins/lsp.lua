return {
    {
        name = "nvim-lspconfig",
        dir = "@nvim_lspconfig@",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lspconfig = require("lspconfig")
            -- Lua
            lspconfig.lua_ls.setup({})
            -- Nix
            lspconfig.nil_ls.setup({})
            --Rust
            lspconfig.rust_analyzer.setup({})
            -- Python
            lspconfig.pyright.setup({})
        end,
    },
}
