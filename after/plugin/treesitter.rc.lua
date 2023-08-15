local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "json",
    "yaml",
    "css",
    "html",
    "javascript",
    "typescript",
    "rust",
    "c",
    "lua",
    "vimdoc",
    "help" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
