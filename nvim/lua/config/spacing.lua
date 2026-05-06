tabs = function(size)
	vim.opt.tabstop = size
	vim.opt.shiftwidth = size
	vim.opt.softtabstop = size
	vim.opt.expandtab = false
end

spaces = function(size)
	vim.opt.tabstop = size
	vim.opt.shiftwidth = size
	vim.opt.softtabstop = size
	vim.opt.expandtab = true
end

tabs(4)
