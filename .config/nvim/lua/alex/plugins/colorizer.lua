local M = {
	"norcalli/nvim-colorizer.lua",
}

M.config = function()
	local colorizer = require("colorizer")
	colorizer.setup()
end

return M
