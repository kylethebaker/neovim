return {
  'Grazfather/sexp.nvim',
  dependencies = {'tpope/vim-repeat'},
  config = {
    enable_insert_mode_mappings = false,
    insert_after_wrap = true,
    filetypes = 'clojure,fennel',
    maxlines = -1,
    mappings = {},
  }
}
