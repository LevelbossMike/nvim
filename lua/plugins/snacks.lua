return {
  "folke/snacks.nvim",
  opts = {
    explorer = { enabled = false },
  },
  keys = {
    { "<leader>t", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
  },
}
