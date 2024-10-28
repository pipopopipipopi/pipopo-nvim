return {
    {
        name = "telescope.nvim",
        dir = "@telescope_nvim@",
        event = "VeryLazy",
        opts = {
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "-uu",
                },
            },
            extentions = {
                frecency = {
                    db_safe_mode = false,
                },
            },
        },
    },
    { name = "plenary.nvim", dir = "@plenary_nvim@" },
    { name = "telescope-file-browser.nvim", dir = "@telescope_file_browser_nvim@" },
    {
        name = "telescope-frecency.nvim",
        dir = "@telescope_frecency_nvim@",
        config = function()
            require("telescope").load_extention "frecency"
        end,
    },
}
