return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "mypy",
      "ruff",
      "black",
    }
  },
  lazy = false
}
