return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<Leader>fe", ':NvimTreeToggle<CR>' },
    { "<Leader>fp", ':NvimTreeFocus<CR>' },
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
