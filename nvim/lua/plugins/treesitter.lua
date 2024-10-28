return {
    {
        name = "nvim-treesitter",
        dir = "@nvim_treesitter@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = false },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
            vim.opt.rtp:append("@treesitter_parsers@")
        end,
    },
}
