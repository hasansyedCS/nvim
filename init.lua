vim.opt.number = true
vim.g.mapleader = " "

-- Install and load Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- Configure plugins
require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    {
	'chomosuke/typst-preview.nvim',
	lazy = false, -- or ft = 'typst'
	version = '1.*',
	opts = {}, -- lazy.nvim will implicitly calls `setup {}`
},

})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
