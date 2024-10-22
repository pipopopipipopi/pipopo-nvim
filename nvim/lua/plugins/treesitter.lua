return {
    name = "nvim-treesitter",
    dir = "@nvim_treesitter@",
    event = "BufRead",
    config = function()
        vim.opt.runtimepath:append("@treesitter_parsers@")

        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
