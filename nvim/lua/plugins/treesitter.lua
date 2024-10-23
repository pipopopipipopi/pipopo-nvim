return {
    name = "nvim-treesitter",
    dir = "@nvim_treesitter@",
    event = "BufRead",
    opts = {
        auto_install = false,
        highllight = { enable = true },
        indent = {enable = true},
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
        vim.opt.rtp:append("@treesitter_parsers@")
    end,
}
