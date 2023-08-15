local DKrasnov_Fugitive = vim.api.nvim_create_augroup("DKrasnov_Fugitive", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
  group = DKrasnov_Fugitive,
  pattern = "*",
  callback = function()
    if vim.bo.ft ~= "fugitive" then
      return
    end
  end
})
