return {
 "Julian/lean.nvim",
  event = { "BufReadPre *.lean", "BufNewFile *.lean" },
  dependencies = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim" },
  init = function()
    vim.g.lean_config = {
      lsp = { autostart = true },
      mappings = true,
    }
  end
} 
