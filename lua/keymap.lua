vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move up' })
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Normal Mode' })

vim.keymap.set('n', '<leader>e', '<CMD> NvimTreeToggle <CR>', { desc = 'Open Neotree' })

-- Buffer
vim.keymap.set('n', '<leader>|', '<CMD> vsplit <CR>', { desc = 'Split Vertically' })

-- Terminal
vim.keymap.set('n', '<leader>h', '<CMD> ToggleTerm size=10 direction=horizontal <CR>', { desc = 'Horizontal Terminal' })

-- CP
vim.keymap.set('n', '<leader>cc', '<CMD> CompetiTest add_testcase <CR>', { desc = 'Add test case' })
vim.keymap.set('n', '<leader>ce', '<CMD> CompetiTest edit_testcase <CR>', { desc = 'Edit test case' })
vim.keymap.set('n', '<leader>cp', '<CMD> CompetiTest run <CR>', { desc = 'Run all test case' })
