return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"
    opts.sources = {
      null_ls.builtins.formatting.prettierd.with({
        env = {
          PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/lua/user/utils/linter-config/.prettierrc.js"),
        }
      }),
      null_ls.builtins.formatting.clang_format,
      null_ls.builtins.formatting.shfmt.with {
        args = { "-i", "2" },
      },
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.ruff,
      null_ls.builtins.formatting.black,
    }
    return opts
  end,
  lazy = true
}
