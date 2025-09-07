return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",  -- install/update parsers
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "c", "cpp", "python", "lua", "javascript"}, -- add languages you use
            highlight = { enable = true },  -- enable syntax highlighting
            indent = { enable = true },     -- enable indentation
            autopairs = { enable = true },  -- optional, if you use nvim-autopairs
        }
    end
}

