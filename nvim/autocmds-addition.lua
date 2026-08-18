
-- CROW dashboard header color - plum, bold, high contrast against near-black
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#a892c4", bold = true })
  end,
})
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#a892c4", bold = true })
