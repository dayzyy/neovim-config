-- testing ssh
require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })   -- Switch to next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true }) -- Switch to previous buffer
vim.keymap.set("n", "<leader>cb", ":bd<CR>", { noremap = true, silent = true }) -- Close current buffer

vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })  -- Horizontal split
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true }) -- Vertical split

vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>n", ":nohlsearch<CR>", { noremap = true, silent = true }) -- Clear search higlights
-- <C-w> h, j, k, l - to move bewteen buffers

vim.opt.relativenumber = true

vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function() vim.opt.relativenumber = false end
}) -- Switch to absolute line numeration when in insert mode

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function() vim.opt.relativenumber = true end
}) -- Switch to relative line numeration when in normal mode

-- Scroll half a page in different directions
vim.api.nvim_set_keymap('n', '<C-h>', '10zh', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '10zl', { noremap = true, silent = true })

-- In your config
vim.keymap.set("v", "E", "g_", { noremap = true, silent = true })  -- select to end of line
vim.keymap.set("v", "B", "0", { noremap = true, silent = true })   -- select to beginning of line
