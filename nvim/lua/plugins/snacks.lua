return {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
      input = { enabled = true },
      notifier = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      toggle = { map = vim.keymap.set },
      words = { enabled = true },

	  dashboard = {},
    -- stylua: ignore
    keys = {
      { "<leader>n", function()
        if Snacks.config.picker and Snacks.config.picker.enabled then
          Snacks.picker.notifications()
        else
          Snacks.notifier.show_history()
        end
      end, desc = "Notification History" },
      { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
    },
  }
}
