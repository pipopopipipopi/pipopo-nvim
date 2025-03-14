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
        cmd = {
            "ObsidianBacklinks",
            "ObsidianCheck",
            "ObsidianFollowLink",
            "ObsidianLink",
            "ObsidianLinkNew",
            "ObsidianNew",
            "ObsidianOpen",
            "ObsidianPasteImg",
            "ObsidianQuickSwitch",
            "ObsidianRename",
            "ObsidianSearch",
            "ObsidianTemplate",
            "ObsidianToday",
            "ObsidianTomorrow",
            "ObsidianWorkspace",
            "ObsidianYesterday",
        },
        opts = {
            workspaces = {
                {
                    name = "vaults",
                    path = "~/Notes",
                },
            },
            notes_subdir = "INBOX",
            note_id_func = function(title)
                local suffix = ""
                if title ~= nil then
                    -- If title is given, transform it into valid file name.
                    suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9ぁ-ゔァ-ヴー一-鿿]", ""):lower()
                else
                    -- If title is nil, just add 4 random uppercase letters to the suffix.
                    for _ = 1, 4 do
                        suffix = suffix .. string.char(math.random(65, 90))
                    end
                end
                return tostring(os.date("%Y%m%d%H%M%S")) .. "-" .. suffix
            end,
            attachments = {
                img_folder = "Files",
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
