return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
    })

    local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "»" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_lsp.default_capabilities()

    vim.lsp.config.gopls = {
      capabilities = capabilities,
    }
    vim.lsp.enable("gopls")

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  end,
}
