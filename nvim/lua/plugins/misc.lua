return {
    {
        name = "no-neck-pain.nvim",
        dir = "@no_neck_pain_nvim@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            autocmds = {
                enableOnVimEnter = true,
            },
        },
    },

    {
        name = "ts-comments.nvim",
        dir = "@ts_comments_nvim@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
    }
}
