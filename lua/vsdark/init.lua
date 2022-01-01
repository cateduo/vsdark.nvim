-- vsdark.nvim color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark
-- By http://github.com/mofiqul

local utils = require("vsdark.utils")
local vsdark = {}


vsdark.set = function ()
	utils.load()
end

vsdark.change_style = function (style)
     vim.g.vsdark_style = style
     print("vsdark style: ", style)
	 vim.cmd[[colorscheme vsdark]]
end

return vsdark




