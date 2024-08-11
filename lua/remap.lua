vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<C-q>', '<C-w>q', { desc = 'Close current window' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })

vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = 'Open quickfix list' })
vim.keymap.set('n', '<leader>qn', ':cnext<CR>zz', { desc = 'Next quickfix entry' })
vim.keymap.set('n', '<leader>qp', ":cprev<CR>zz", { desc = 'Prev quickfix entry' })
