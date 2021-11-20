
vim.api.nvim_set_keymap('n', '<Leader>dc', ":lua require('dap').continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dn', ":lua require('dap').step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>di', ":lua require('dap').step_in()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>db', ":lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', ":lua require('dap').repl.open()<CR>", { noremap = true, silent = true })

