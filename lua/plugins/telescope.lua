return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() 
        require'telescope'.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous"
                    }
                }
            }
        })
    end,
    keys = {
        vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
        vim.keymap.set("n", "<leader>fg", ":Telescope git_files<CR>"),
        vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>"),
        vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
        vim.keymap.set("n", "<leader>ps", function()
            require'telescope.builtin'.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    }
}
