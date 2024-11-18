-------------------------------------------------------------------------------
--
-- Basic Configuration
--
-------------------------------------------------------------------------------

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Default space sizing
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the
-- search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Don't wrap by default
vim.opt.wrap = false


-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = {
  tab = '» ',
  trail = '◥',
  nbsp = '␣',
  extends = '»',
  precedes = '«',
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Highlight which line your cursor is on
vim.opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Use 24bit colors
vim.opt.termguicolors = true

-------------------------------------------------------------------------------
--
-- Keymappings
--
-------------------------------------------------------------------------------

-- Set <space> and "," as the leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", ",", "<Nop>", { silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>w', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Hide the message about how to exit nvim when pressing C-c since I use this
-- to close stuff
vim.keymap.set('n', '<C-c>', '<silent> <C-c>')

-- Navigate buffers a little nicer
vim.keymap.set('n', '<LocalLeader>m', '<cmd>bnext<cr>')
vim.keymap.set('n', '<LocalLeader>n', '<cmd>bprev<cr>')
vim.keymap.set('n', '<LocalLeader>q', '<cmd>bd<cr>')

-------------------------------------------------------------------------------
--
-- Load Plugins
--
-------------------------------------------------------------------------------

require("config.lazy")

-------------------------------------------------------------------------------
--
-- Colorscheme
--
-------------------------------------------------------------------------------

vim.cmd("colorscheme catppuccin")
