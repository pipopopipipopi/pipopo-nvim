return {
    name = "telescope.nvim",
    dir = "@telescope_nvim@",
    event = "VimEnter",
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
    },
    dependencies = {
        { name = "plenary.nvim", dir = "@plenary_nvim@" },
        { name = "telescope-file-browser.nvim", dir = "@telescope_file_browser_nvim@" },
    },
}
