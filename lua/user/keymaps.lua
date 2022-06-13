local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

---------------------------------------------------------------------
-- JRIZO ------------------------------------------------------------
---------------------------------------------------------------------
keymap("n", "<leader>pv", ":Sex!<CR>", opts)
keymap("n", "<leader>pv", ":Sex!<CR>", opts)
-- keymap("v", "K", ":m '<-2'<CR>v", opts)
-- keymap("v", "j", ":m '>+1'<CR>gv=gv", opts)
keymap("v", "<leader>p", '"_dP', opts)
keymap("n", "<leader>cp", '"+p', opts)
keymap("v", "<leader>cp", '"+p', opts)
keymap("n", "<leader>y", '"+y', opts)
keymap("v", "<leader>y", '"+y', opts)
keymap("v", "<leader>Y", 'gg"+yG', opts)
-- keymap("i", "<C-BS>", "<C-W>", opts) -- not working
keymap("n", "<leader>o", "o<Esc>", opts)
keymap("n", "<leader>O", "O<Esc>", opts)

-- INDENT
keymap("n", "<Tab>", ">>", opts)
keymap("n", "<S-Tab>", "<<", opts)
-- keymap("i", "<S-Tab>", "<Esc><<i", opts)
-- keymap("i", "<Tab>", "<Esc>>>i", opts)
keymap("v", "<S-Tab>", "<gv", opts)
keymap("v", "<Tab>", ">gv", opts)
-- TABS NAV
keymap("n", "th", ":tabnext<CR>", opts)
keymap("n", "tl", ":tabprev<CR>", opts)
keymap("n", "td", ":tabclose<CR>", opts)
keymap("n", "tn", ":tabnew<CR>", opts)
-- NVIM TREE
-- keymap("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)
-- BUFFERLINE TODO:
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)
keymap("n", "<A-->", "<cmd>Bdelete!<CR>", opts)
--  TELESCOPE
keymap(
  "n",
  "<C-p>",
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  -- "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_ivy())<cr>",
  opts
)





-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

