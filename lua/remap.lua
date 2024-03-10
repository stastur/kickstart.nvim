vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<leader>ev', vim.cmd.Vex, { desc = 'Open project files in a new buffer' })
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Open project files in current buffer' })

vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-w>', '<C-w>w', { desc = 'Move to next window' })
vim.keymap.set('n', '<C-q>', '<C-w>q', { desc = 'Close current buff' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })

local opt_j = '˚'
local opt_k = '∆'
local opt_shift_j = 'Ô'
local opt_shift_k = ''

vim.keymap.set('n', opt_j, ":m-2<CR>==", { desc = 'Move line down' })
vim.keymap.set('n', opt_k, ":m+1<CR>==", { desc = 'Move line up' })
vim.keymap.set('v', opt_k, ":m '>+1<CR>gv=gv", { desc = 'Move block up' })
vim.keymap.set('v', opt_j, ":m '<-2<CR>gv=gv", { desc = 'Move block down' })

vim.keymap.set('n', opt_shift_j, 'Yp', { desc = 'Duplicate line below' })
vim.keymap.set('n', opt_shift_k, 'YP', { desc = 'Duplicate line above' })

function toggle()
	require('zen-mode').toggle()
end

vim.keymap.set('n', "<leader>zz", toggle, { desc = 'Zen mode' })
