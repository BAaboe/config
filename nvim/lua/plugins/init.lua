local Plugins = {
	{ "EdenEast/nightfox.nvim" },
	{'windwp/nvim-autopairs', event = "InsertEnter", config = true},
	'nvim-tree/nvim-web-devicons',
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_view_method = "zathura"
			vim.maplocalleader = ','
		end
		},
	{"andweeb/presence.nvim"},
	{"normen/vim-pio"},

	 {
      'rhysd/vim-clang-format',
      config = function()
        vim.g.clang_format_style = 'file' -- Use .clang-format file in project
        vim.cmd [[autocmd BufWritePre *.cpp,*.c,*.hpp,*.h :ClangFormatAutoEnable]]
        vim.keymap.set('n', '<leader>cf', ':ClangFormat<CR>', { desc = 'Format current file with clang-format' })
        vim.keymap.set('v', '<leader>cf', ':ClangFormat<CR>', { desc = 'Format selected lines with clang-format' })
      end,
    }
}

return Plugins
