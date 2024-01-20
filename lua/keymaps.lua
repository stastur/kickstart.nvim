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
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Personal keymaps
vim.keymap.set('n', '<leader>pv', ':Vex<CR>', { desc = 'Open project files' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })

vim.keymap.set('n', '∆', ":m+1<CR>==", { desc = 'Move line down' })
vim.keymap.set('n', '˚', ":m-2<CR>==", { desc = 'Move line up' })
vim.keymap.set('v', '∆', ":m '>+1<CR>gv=gv", { desc = 'Move block down' })
vim.keymap.set('v', '˚', ":m '<-2<CR>gv=gv", { desc = 'Move block up' })
