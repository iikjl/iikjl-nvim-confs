vim.g.mapleader = " "

local keymap = vim.keymap 

-- general

-- insert mode
keymap.set("i","jk","<ESC>")

-- normal mode
keymap.set("n","<leader>nh",":nohl<CR>")
--increment numbers
keymap.set("n","<leader>+", "<C-a>")
keymap.set("n","<leader>-","<C-x>")
-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugins

-- vim-maximizer
keymap.set("n","<leader>sm", ":MaximizerToggle<CR>")

--nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>") 

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory 
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current directory

