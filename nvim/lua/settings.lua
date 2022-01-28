
-- Show line numbers on the left.
vim.opt.number = true

-- Enable mouse mode.
vim.o.mouse = 'a'

-- Enable break indent.
vim.o.breakindent = true

-- Save undo history.
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.o.termguicolors = true

vim.o.spell = true
vim.cmd('set spelllang=en,cjk') -- TODO: use vim.o

vim.o.foldenable = false

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Enable smart wrap.
vim.o.breakindent = true
vim.o.breakindentopt = "min:20,shift:0,sbr"
vim.o.showbreak = ">>> "

-- Turn off the filetype-based indentation.
vim.cmd('filetype indent off')

vim.o.equalalways = false

vim.o.lazyredraw = true

vim.o.list = true
vim.o.listchars = "tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%"

vim.o.clipboard = "unnamedplus"

-- Disable adding a newline at EOF.
vim.opt.fixendofline = false

-- Automatically detect file encodings and file formats.
vim.opt.fileformats = 'unix,dos,mac'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = 'ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,sjis'

vim.g.mapleader = " "

vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('' , '<C-S>',      ':update<CR>'  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-S>', '<C-C>:update<CR>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-S>', '<C-O>:update<CR>'  , { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<S-Down>' , ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Up>'   , ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Left>' , ':vertical resize -3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Right>', ':vertical resize +3<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>t', ':bel 10sp +terminal<CR>:startinsert<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>T', ':terminal<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>2', ':setlocal tabstop=2<CR>:setlocal shiftwidth=2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>4', ':setlocal tabstop=4<CR>:setlocal shiftwidth=4<CR>', { noremap = true, silent = true })

-- Escape from terminal.
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Reference: https://vim.fandom.com/wiki/Search_and_replace_the_word_under_the_cursor
vim.api.nvim_set_keymap('n', '<Leader>s', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>', { noremap = true, silent = false })

