return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "go", "lua", "vim", "javascript", "html" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

