return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpadte",
  version = false,
  	opts = {
  		ensure_installed = { "go", "lua", "vim", "javascript", "html" },
		highlight = { enable = true },
		indent = { enable = true },
	},
    }
	

