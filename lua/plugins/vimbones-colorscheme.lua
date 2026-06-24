return {
  "zenbones-theme/zenbones.nvim",
  -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  -- In Vim, compat mode is turned on as Lush only works in Neovim.
  dependencies = "rktjmp/lush.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    shared = {
      lighten_comments = 45,
      -- darkness = 'stark',
      colorize_diagnostic_underline_text = true,
      italic_comments = false,
      italic_strings = false,
      transparent_background = true,
    }

    local variants = {
      "zenbones",
      "zenwritten",
      "neobones",
      "vimbones",
      "rosebones",
      "forestbones",
      "nordbones",
      "tokyobones",
      "seoulbones",
      "duckbones",
      "zenburned",
      "kanagawabones",
      "randombones",
    }

    for _, variant in ipairs(variants) do
      vim.g[variant] = shared;
    end
  end
}
