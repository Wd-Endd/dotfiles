return {
	"lukas-reineke/indent-blankline.nvim",
	dependencies = { "TheGLander/indent-rainbowline.nvim" },
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		require("ibl").setup(require("indent-rainbowline").make_opts(opts, {
			color_transparency = 0.1,
			-- { 0xffff40, 0x79ff79, 0xff79ff, 0x4fecec, } by default
			colors = {
				0xcba6f7, -- Mauve
				0x89b4fa, -- Blue
				0x89dceb, -- Sky
				0xa6e3a1, -- Green
				0xf9e2af, -- Yellow
				0xfab387, -- Peach
				0xf38ba8, -- Red
			},
		}))
	end,
	requires = {
		"TheGLander/indent-rainbowline.nvim",
	},
}
