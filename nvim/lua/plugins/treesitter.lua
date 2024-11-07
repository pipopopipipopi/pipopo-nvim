return {
    {
        name = "nvim-treesitter",
        dir = "@nvim_treesitter@",
        event = { "BufReadPost", "BufNewFile", "VeryLazy" },
        opts = {
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
            vim.opt.rtp:append("@treesitter_parsers@")
        end,
    },
}
