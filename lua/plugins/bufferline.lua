return {
  'akinsho/bufferline.nvim',
  version = "*",
  enabled = false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = function()
    local bufferline = require('bufferline')

    vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = vim.g.me.colors.bg })
    vim.api.nvim_set_hl(0, 'BufferLineBuffer', { bg = '#00ff00' })
    vim.api.nvim_set_hl(0, 'BufferLineBufferSelected', { bg = '#ff0000' })
    vim.api.nvim_set_hl(0, 'BufferLineDevIconDefaultSelected', { bg = '#ff0000' })
    vim.api.nvim_set_hl(0, 'BufferLineSeparatorSelected', { bg = '#ff0000' })

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
      }
    }
  end
}
