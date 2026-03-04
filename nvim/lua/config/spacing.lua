local tabs = function(size)
	vim.opt.tabstop = size
	vim.opt.shiftwidth = size
	vim.opt.softtabstop = size
	vim.opt.expandtab = false
end

local spaces = function(size)
	vim.opt.tabstop = size
	vim.opt.shiftwidth = size
	vim.opt.softtabstop = size
	vim.opt.expandtab = true
end

tabs(4)
