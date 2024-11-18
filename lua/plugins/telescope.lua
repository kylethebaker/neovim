return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<Leader>sh", function() require("telescope.builtin").help_tags() end, desc = '[S]earch [H]elp' },
    { "<Leader>sk", function() require("telescope.builtin").keymaps() end, desc = '[S]earch [K]eymaps' },
    { "<Leader>sf", function() require("telescope.builtin").find_files() end, desc = '[S]earch [F]iles' },
    { "<Leader>ss", function() require("telescope.builtin").builtin() end, desc = '[S]earch [S]elect Telescope' },
    { "<Leader>sw", function() require("telescope.builtin").grep_string() end, desc = '[S]earch current [W]ord' },
    { "<Leader>sg", function() require("telescope.builtin").live_grep() end, desc = '[S]earch by [G]rep' },
    { "<Leader>sd", function() require("telescope.builtin").diagnostics() end , desc = '[S]earch [D]iagnostics' },
    { "<Leader>sr", function() require("telescope.builtin").resume() end, desc = '[S]earch [R]esume' },
    { "<C-p>", function() require("telescope.builtin").find_files() end },
    { "<D-p>", function() require("telescope.builtin").find_files() end },
  },
  opts = {
    pickers = {
      find_files = {
        previewer = false,
        theme = 'dropdown'
      }
    }
  }
}

