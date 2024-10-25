return {
    {
        name = "no-neck-pain.nvim",
        dir = "@no_neck_pain_nvim@",
        event = "BufRead",
        opts = {
            autocmds = {
                enableOnVimEnter = true,
            },
        },
    },

    {
        name = "nvim-scrollbar",
        dir = "@nvim_scrollbar@",
        event = "BufRead",
    },

    {
        name = "Comment.nvim",
        dir = "@comment_nvim@",
        event = "BufRead",
    }
}
