local status, cloak = pcall(require, "cloak")
if (not status) then return end

require("cloak").setup({
  enabled = true,
  cloak_character = "*",
  highlight_group = "Comment",
  patterns = {
    {
      file_pattern = {
        ".env*",
        "wrangler.toml",
        ".dev.vars",
      },
      cloak_pattern = "=.+"
    },
  },
})
