-- init.lua

-- Leader Key
vim.g.mapleader = " "

-- Load Lazy.nvim
vim.opt.runtimepath:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
    "nvim-treesitter/nvim-treesitter",
    "nvim-lualine/lualine.nvim",

    -- Load plugins from separate files
    require("plugins.everforest"),
    require("plugins.telescope"),
    require("plugins.treesitter"),
    require("plugins.neotree"),
    require("plugins.dashboard"),
})

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Telescope
local builtin = require("telescope.builtin")
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require("telescope.builtin").find_files({ hidden = true })<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- True colors for theme
vim.opt.termguicolors = true

-- Neotree
vim.api.nvim_set_keymap(
    "n",
    "<leader>df",
    ":Neotree toggle<CR>",
    { noremap = true, silent = true }
)
