-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Personal keymaps
vim.keymap.set('n', '<leader>ev', ':Vex<CR>', { desc = 'Open project files in a new buffer' })
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open project files in current buffer' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })

local opt_j = '˚'
local opt_k = '∆'
local opt_shift_j = 'Ô'
local opt_shift_k = ''

vim.keymap.set('n', opt_k, ":m+1<CR>==", { desc = 'Move line up' })
vim.keymap.set('n', opt_j, ":m-2<CR>==", { desc = 'Move line down' })
vim.keymap.set('v', opt_k, ":m '>+1<CR>gv=gv", { desc = 'Move block up' })
vim.keymap.set('v', opt_j, ":m '<-2<CR>gv=gv", { desc = 'Move block down' })

vim.keymap.set('n', opt_shift_j, 'Yp', { desc = 'Duplicate line below' })
vim.keymap.set('n', opt_shift_k, 'YP', { desc = 'Duplicate line above' })

vim.keymap.set('n', "<leader>\\", ":vsp<CR>", { desc = 'Open vertical split' })
vim.keymap.set('n', "<leader>-", ":sh<CR>", { desc = 'Open horizontal split' })
