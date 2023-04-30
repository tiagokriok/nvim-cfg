vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)

require("telescope").setup { defaults = { file_ignore_patterns = { "node_modules" } } }

-- require("neo-tree").setup {
--   filesystem = {
--     filtered_items = {
--       hide_dotfiles = false,
--       hide_gitignored = false,
--       hide_by_name = {
--         ".DS_Store",
--         "node_modules",
--         ".git",
--       },
--     },
--   },
-- }

require("todo-comments").setup()
