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

-- How long to wait for keystrokes after leader key is pressed
vim.opt.timeoutlen = 800

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

-- Don't show the splash page
vim.o.shortmess = vim.o.shortmess .. "I"

-- Disable neovims built-in file browser, since we're using treeview
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Settings for how code diagnostic hover windows are shown
vim.diagnostic.config({
  underline = false,
  signs = true,
  virtual_text = false,
  float = {
    header = '',
    source = 'if_many',
    border = nil,
    focusable = false,
  },
  update_in_insert = true,
  severity_sort = true,
})

-- Use bash-like tab-completion for commands
vim.o.wildmode = 'longest,full'

-------------------------------------------------------------------------------
--
-- Custom Variables
--
-------------------------------------------------------------------------------

vim.g.me = {
  colors = {
    bg = '#0A0B12',
    bg_darker='#05060a',
    bg_lighter='#0d0f1c',
    accent = '#3c3a51',
    accent_darker = '#2e2b42',
  }
}

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

-- Navigate buffers and windows little nicer
vim.keymap.set('n', '<LocalLeader>m', '<cmd>bnext<cr>')
vim.keymap.set('n', '<LocalLeader>n', '<cmd>bprev<cr>')
vim.keymap.set('n', '<LocalLeader>d', '<cmd>bd<cr>')
vim.keymap.set('n', '<LocalLeader>q', '<cmd>close<cr>')
vim.keymap.set('n', '<C-w>o', '<cmd>tabe %<cr>')
vim.keymap.set('n', '<C-w>O', '<cmd>only<cr>')
vim.keymap.set('n', '<C-w>n', '<cmd>new<cr>')

-- Use bash-like keybindings for command line
vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-e>', '<End>')
vim.keymap.set('c', '<C-p>', '<Up>')
vim.keymap.set('c', '<C-n>', '<Down>')
vim.keymap.set('c', '<C-b>', '<Left>')
vim.keymap.set('c', '<C-f>', '<Right>')

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

-------------------------------------------------------------------------------
--
-- Commands
--
-------------------------------------------------------------------------------

-- Clear the command buffer so it doesn't linger after running a command
vim.api.nvim_create_autocmd("CmdlineLeave", {
  callback = function()
    vim.fn.timer_start(3000, function() print(" ") end)
  end
})
