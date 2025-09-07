-- lua/plugins/everforest.lua
return {
    "sainnhe/everforest",
    config = function()
        vim.g.everforest_background = "hard"   -- options: "soft", "medium", "hard"
        vim.g.everforest_enable_italic = 1     -- enable italics
        vim.g.everforest_better_performance = 1
        vim.cmd("colorscheme everforest")      -- apply theme
    end,
}

