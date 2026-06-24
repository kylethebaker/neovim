return {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
    require("lackluster").setup({
      tweak_background = {
        normal = 'none',
        telescope = 'none',
        menu = 'default',      -- nvim_cmp, wildmenu ... (bad idea to transparent)
        popup = 'default',     -- lazy, mason, whichkey ... (bad idea to transparent)
      },
      tweak_color = {
        -- you can set a value to a custom hexcode like' #aaaa77' (hashtag required)
        -- or if the value is 'default' or nil it will use lackluster's default color
        -- lack = "#aaaa77",
        lack = "default",
        luster = "default",
        orange = "default",
        yellow = "default",
        green = "default",
        blue = "default",
        red = "default",
        -- WARN: Watchout! messing with grays is probs a bad idea, its very easy to shoot yourself in the foot!
        black = '#0A0B12',
        gray1 = '#0F1019',
        gray2 = '#1B1B28',
        gray3 = '#272738',
        gray4 = '#3C3A51',
        gray5 = '#4A4762',
        gray6 = '#6C6789',
        gray7 = '#9D94C0',
        gray8 = '#C3B7EA',
        gray9 = '#D7CAFF',
      },
    })
    vim.cmd.colorscheme("lackluster")
  end,
}
