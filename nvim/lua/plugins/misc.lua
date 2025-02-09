return {
    {
        name = "plenary.nvim",
        dir = "@plenary_nvim@",
    },

    {
        name = "no-neck-pain.nvim",
        dir = "@no_neck_pain_nvim@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            autocmds = {
                enableOnVimEnter = true,
            },
            buffers = {
                right = { enabled = false },
            },
        },
    },

    {
        name = "ts-comments.nvim",
        dir = "@ts_comments_nvim@",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
    },

    {
        name = "toggleterm.nvim",
        dir = "@toggleterm_nvim@",
        cmd = "ToggleTerm",
        opts = {},
    },

    {
        name = "nvim-colorizer.lua",
        dir = "@nvim_colorizer_lua@",
        cmd = "ColorizerAttachToBuffer",
        opts = {},
    },

    {
        name = "obsidian.nvim",
        dir = "@obsidian_nvim@",
        event = {
            "BufReadPre " .. vim.fn.expand "~" .. "/Notes/**.md",
            "BufNewFile " .. vim.fn.expand "~" .. "/Notes/**.md",
        },
        opts = {
            workspaces = {
                {
                    name = "inbox",
                    path = "~/Notes/INBOX",
                },
            },

            ui = {
                enable = false,
            },
        },
        dependencies = {
            name = "plenary.nvim",
            dir = "@plenary_nvim@",
        },
    },
}
