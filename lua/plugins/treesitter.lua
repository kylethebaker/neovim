-- This is (mostly) copied from kickstart.nvim

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
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = ensure_installed,
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
