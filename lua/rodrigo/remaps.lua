vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h") -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j") -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k") -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l") -- Navigate Right

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>") -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>") -- Split Horizontally

vim.keymap.set("n", "<leader><leader>", 
    function() 
        vim.cmd("so") 
    end
)

-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Change word with Ctrl+c
vim.keymap.set("n", "<C-c>", "<cmd>normal! ciw<cr>a")

-- Compile and run C++ file
-- vim.keymap.set("n", "<F5>", vim.cmd.NeoRunner)
vim.keymap.set("n", "<leader>c", ":w<CR> :!g++ -Wall -Wextra -Wconversion -O2 -std=c++20 % -o %< <CR>")
vim.keymap.set("n", "<leader>r", 
    function()
        vim.cmd("bo term ./%<")
    end
)

vim.keymap.set("i", "<C-Backspace>", "<Esc>ciw")

