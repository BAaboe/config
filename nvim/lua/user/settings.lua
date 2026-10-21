vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.autoindent = true
vim.opt.cursorline=true
vim.opt.termguicolors = true
vim.opt.termguicolors = true
vim.opt.showtabline = 0

vim.api.nvim_create_autocmd("FileType",{
	desc = "Set tabs to 2 on .c and .h",
	group = vim.api.nvim_create_augroup("CTabs", {clear = True}),
	pattern = {"c"},
	callback = function()
		vim.opt.tabstop = 2
		vim.opt.softtabstop=2
		vim.opt.shiftwidth=2
	end,
})
