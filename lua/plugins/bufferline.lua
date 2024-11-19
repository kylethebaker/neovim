return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = function()
    local bufferline = require('bufferline')

    -- see `:h bufferline-configuration`
    return {
      options = {
        show_buffer_close_icons = false,
        modified_icon = '•︎ ',
        left_trunc_marker = '« ',
        right_trunc_marker = '» ',
        separator_style = {'+', '+'},
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold
        },
        offsets = {
          {
            filetype = 'NvimTree',
            text = '',
            text_align = 'left',
            separator = false,
          },
        },
        themable = true,
        highlights = {
          fill = {
            bg = '#3c3a51'
          },
          tab_selected = {
            fg = '#ff0000',
            bg = '#3c3a51'
          }
        }
      }
    }
  end
}
