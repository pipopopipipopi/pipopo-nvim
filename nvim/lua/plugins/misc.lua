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
                    name = "notes",
                    path = "~/Notes",
                },
            },
            notes_subdir = "000_INBOX",
            ---@param title string|?
            ---@return string
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
            ---@return table
            note_frontmatter_func = function(note)
                local out = { id = note.id, tags = note.tags }

                if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
                    for k, v in pairs(note.metadata) do
                        out[k] = v
                    end
                end

                return out
            end,
            templates = {
                folder = "900_Templates",
                date_format = "%Y年%m月%d日",
            },
            attachments = {
                img_folder = "800_Files",
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
