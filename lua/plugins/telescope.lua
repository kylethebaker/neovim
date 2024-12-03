return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<Leader>ff", function() require("telescope.builtin").find_files() end, desc = '[F]ind [F]iles' },
    { "<Leader>fh", function() require("telescope.builtin").help_tags() end, desc = '[F]ind [H]elp' },
    { "<Leader>fs", function() require("telescope.builtin").builtin() end, desc = '[F]ind [S]elect Telescope' },
    { "<Leader>fw", function() require("telescope.builtin").grep_string() end, desc = '[F]ind current [W]ord' },
    { "<Leader>fg", function() require("telescope.builtin").live_grep() end, desc = '[F]ind by [G]rep' },
    { "<Leader>fd", function() require("telescope.builtin").diagnostics() end , desc = '[F]ind [D]iagnostics' },
    { "<Leader>fc", function() require("telescope.builtin").commands() end, desc = '[F]ind [C]ommands' },
    { "<Leader>fr", function() require("telescope.builtin").resume() end, desc = '[F]ind [R]esume' },
    -- Just out of habit from other programs
    { "<C-p>", function() require("telescope.builtin").find_files() end },
  },
  opts = {
    pickers = {
      find_files = {
        previewer = false,
        theme = 'dropdown'
      },
      builtin = {
        previewer = false,
      }
    }
  }
}

