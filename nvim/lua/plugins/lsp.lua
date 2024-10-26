return {
    {
        name = "nvim-lspconfig",
        dir = "@nvim_lspconfig@",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            local lspconfig = require("lspconfig")
            -- LaTeX
            lspconfig.texlab.setup{}
            -- Lua
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })
            -- Nix
            lspconfig.nil_ls.setup{}
            -- Python
            lspconfig.ruff.setup{}
            -- Rust
            lspconfig.rust_analyzer.setup{}
        end,
    },
}
