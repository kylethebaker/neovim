-- Shows the git changes in the gutter
return {
  'lewis6991/gitsigns.nvim',
  keys = {
    { "<Leader>tg", ':Gitsigns toggle_signs<CR>', desc = '[T]oggle [G]Git Gutters' },
  },
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
}
