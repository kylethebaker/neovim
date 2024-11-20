return {
  'nvim-lualine/lualine.nvim',
  dependencies = {},
  opts = {
    options = {
      icons_enabled = true,
      -- theme = function()
      --   return vim.tbl_deep_extend('force', require('lualine.themes.auto'), {
      --     inactive = {
      --       a = {
      --         bg = vim.g.me.colors.accent_darker,
      --       },
      --       b = {
      --         bg = vim.g.me.colors.accent_darker,
      --       },
      --       c = {
      --         bg = vim.g.me.colors.accent_darker,
      --       },
      --     }
      --   });
      -- end,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        'NvimTree',
      },
      ignore_focus = {},
      always_divide_middle = true,
      always_show_tabline = false,
      globalstatus = false,
      refresh = {
        statusline = 100,
        tabline = 100,
        winbar = 100,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
        { 'branch', icons_enabled = false },
        { 'diff' },
        { 'diagnostics' },
      },
      lualine_c = {},
      lualine_x = {'filename'},
      lualine_y = {
        { 'filetype', icon_only = true, padding = 0 },
      },
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {'filename'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = {
        {
          'tabs',
          mode = 2,
          symbols = {
            modified = '+'
          },

        }
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  }
}
