if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

-- Set timeout for key sequences
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

require("config.lazy")
