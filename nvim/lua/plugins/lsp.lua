return {
    {
        name = "nvim-lspconfig",
        dir = "@nvim_lspconfig@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            servers = {
                -- C
                ccls = {},
                -- LaTeX
                texlab = {},
                -- Lua
                lua_ls = {
                    settings = {
                        Lua = {
                            diagnostics = { globals = { "vim" } },
                        },
                    },
                },
                -- Nix
                nil_ls = {},
                -- Python
                pyright = {},
                -- Rust
                rust_analyzer = {},
            },
        },
        config = function(_, opts)
            local lspconfig = require("lspconfig")
            for server, server_opts in pairs(opts.servers) do
                lspconfig[server].setup(server_opts)
            end
        end,
    },
}

