return {
 "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    term_colors = true,
    no_italic = true,
    no_bold = true,
    no_underline = true,
    styles = {
      comments = {},
      conditionals = {},
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
      -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
      all = {
        base = vim.g.me.colors.bg,
        mantle = vim.g.me.colors.accent,
        crust = vim.g.me.colors.accent_darker
      },
    },
    custom_highlights = {},
    default_integrations = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      telescope = true,
    },
  },
}
