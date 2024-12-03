-- This is mostly copied from kickstart.nvim

return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'PaterJason/cmp-conjure',
  },
  config = function()
    local cmp = require 'cmp'

    cmp.setup {
      completion = {
        completeopt = 'menu,menuone,noinsert',
        autocomplete = false
      },

      -- For an understanding of why these mappings were
      -- chosen, you will need to read `:help ins-completion`
      --
      -- No, but seriously. Please read `:help ins-completion`, it is really good!
      mapping = cmp.mapping.preset.insert {
        -- Select the [n]ext item
        ['<C-n>'] = cmp.mapping.select_next_item(),
        -- Select the [p]revious item
        ['<C-p>'] = cmp.mapping.select_prev_item(),

        -- Scroll the documentation window [b]ack / [f]orward
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),

        -- Accept completion with Tab/Enter, and manually open with C-Space
        ['<CR>'] = cmp.mapping.confirm { select = true },
        ['<Tab>'] = cmp.mapping.confirm { select = true },
        ['<C-Space>'] = cmp.mapping.complete {},
      },
      sources = {
        {
          name = 'lazydev',
          -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
          group_index = 0,
        },
        {
          name = 'nvim_lsp',
          -- Don't show Text suggestions since I don't care about them
          entry_filter = function(entry)
            return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind()
          end
        },
        { name = 'conjure' },
        { name = 'path' },
      },
    }
  end,
}
