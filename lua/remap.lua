vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<C-q>', '<C-w>q', { desc = 'Close current window' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })

vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = 'Open quickfix list' })
vim.keymap.set('n', '<C-j>', ':cnext<CR>zz', { desc = 'Next quickfix entry' })
vim.keymap.set('n', '<C-k>', ":cprev<CR>zz", { desc = 'Prev quickfix entry' })
