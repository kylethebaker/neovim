return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<Leader>ee", ':NvimTreeToggle<CR>' },
    { "<Leader>ef", ':NvimTreeFocus<CR>' },
  },
  config = function()
    vim.cmd([[
      hi NvimTreeNormal guibg=g:me.colors.bg_darker
    ]])

    require("nvim-tree").setup {
    }
  end,
}
