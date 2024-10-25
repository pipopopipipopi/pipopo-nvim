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
        name = "Comment.nvim",
        dir = "@comment_nvim@",
        event = "BufRead",
        opts = {},
    }
}
