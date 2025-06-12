return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { 
				"javascript", 
				"typescript", 
				"python", 
				"c", 
				"lua", 
				"vim", 
				"vimdoc", 
				"query", 
				"markdown", 
				"markdown_inline", 
			},
			auto_install = true,
  			highlight = { enable = true, additional_vim_regex_highlighting = false },
		})
	end,
}
