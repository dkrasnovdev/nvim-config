local status, zen_mode = pcall(require, "zen-mode")
if (not status) then return end

vim.keymap.set("n", "<leader>zm", function()
  zen_mode.setup {
    window = {
      width = 90,
      options = {}
    },
  }
  require("zen-mode").toggle()
  vim.wo.wrap = false
  vim.wo.number = true
  vim.wo.rnu = true
end)


vim.keymap.set("n", "<leader>zz", function()
  zen_mode.setup {
    window = {
      width = 80,
      options = {}
    },
  }
  require("zen-mode").toggle()
  vim.wo.wrap = false
  vim.wo.number = false
  vim.wo.rnu = false
  vim.opt.colorcolumn = "0"
end)
