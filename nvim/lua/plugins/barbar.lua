return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		animation = true,
		clickable = true,

		icons = {
			button = false
		},

		-- diagnostics = {
		-- 	[vim.icons.diagnostics.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
		-- 	[vim.icons.diagnostics.severity.WARN] = {enabled = false},
		-- 	[vim.icons.diagnostics.severity.INFO] = {enabled = false},
		-- 	[vim.icons.diagnostics.severity.HINT] = {enabled = true},
		-- },
		-- gitsigns = {
		-- 	added = {enabled = true, icon = '+'},
		-- 	changed = {enabled = true, icon = '~'},
		-- 	deleted = {enabled = true, icon = '-'},
		-- },
	},
	version = "^1.0.0",
}
