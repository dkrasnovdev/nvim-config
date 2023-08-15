local status, _ = pcall(require, "trouble")
if (not status) then return end

vim.keymap.set("n", "<leader>qf", "<cmd>TroubleToggle quickfix<cr>",
  { silent = true, noremap = true }
)
