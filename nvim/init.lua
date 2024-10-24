-- change the path of the config directory --
local configpath = vim.fn.getenv("CONFIG_PATH")

vim.opt.rtp:prepend(configpath)
vim.opt.packpath:prepend(configpath)
vim.cmd("set runtimepath+=" .. configpath)
---------------------------------------------

vim.g.mapleader = " "

vim.loader.enable()

local lazypath = "@lazy_nvim@"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    defaults = { lazy = true },
    spec = "plugins",
})

require("config.option")
require("config.keymaps")
require("config.colorscheme")
