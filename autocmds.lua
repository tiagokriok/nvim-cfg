vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)

require("telescope").setup { defaults = { file_ignore_patterns = { "node_modules" } } }

require("todo-comments").setup()
