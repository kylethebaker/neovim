local ensure_installed = {
 'bash',
 'clojure',
 'diff',
 'html',
 'javascript',
 'lua',
 'luadoc',
 'markdown',
 'markdown_inline',
 'typescript',
 'query',
 'vim',
 'vimdoc',
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  -- See `:help nvim-treesitter`
  opts = {
    ensure_installed = ensure_installed,
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
