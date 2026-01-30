return {
  'ray-x/aurora',
  init = function()
    vim.g.aurora_italic = 1
    vim.g.aurora_transparent = 1
    vim.g.aurora_bold = 1
  end,
  config = function()
    vim.cmd.colorscheme "aurora"
    vim.api.nvim_set_hl(0, '@number', {fg='#e933e3'})
    vim.api.nvim_set_hl(0, 'DiagnosticError', {fg='#ff0000'})
    vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', {underline=true, sp='#ff0000'})
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', {fg='#ff0000'})
  end
}
