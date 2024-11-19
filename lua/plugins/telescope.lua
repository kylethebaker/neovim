return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<Leader>ff", function() require("telescope.builtin").find_files() end, desc = '[S]earch [F]iles' },
    { "<Leader>fh", function() require("telescope.builtin").help_tags() end, desc = '[S]earch [H]elp' },
    { "<Leader>fs", function() require("telescope.builtin").builtin() end, desc = '[S]earch [S]elect Telescope' },
    { "<Leader>fw", function() require("telescope.builtin").grep_string() end, desc = '[S]earch current [W]ord' },
    { "<Leader>fg", function() require("telescope.builtin").live_grep() end, desc = '[S]earch by [G]rep' },
    { "<Leader>fd", function() require("telescope.builtin").diagnostics() end , desc = '[S]earch [D]iagnostics' },
    { "<Leader>fc", function() require("telescope.builtin").commands() end, desc = '[S]earch [C]ommands' },
    { "<Leader>fr", function() require("telescope.builtin").resume() end, desc = '[S]earch [R]esume' },
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

