return {
	{
		"nvimtools/none-ls.nvim",

		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.formatting["clang-format"],
					-- null_ls.builtins.diagnostics.eslint_d,
					-- null_ls.builtins.completion.spell,
				},
			})
		end,
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
			"nvim-lua/plenary.nvim",
			-- "williamboman/mason.nvim",
			-- "mfussenegger/nvim-lint",
			-- "rshkarin/mason-nvim-lint",
			-- "jose-elias-alvarez/null-ls.nvim",
		},
	},
}
