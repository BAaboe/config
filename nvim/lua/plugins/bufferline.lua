local Plugin = {'akinsho/bufferline.nvim'}

Plugin.event = 'VeryLazy'

Plugin.keys = {
	{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
	{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
	{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
	{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
	{ "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
	{ "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
}

Plugin.opts = {
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'neo-tree'},
    },
  },
  -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  }
}

return Plugin

