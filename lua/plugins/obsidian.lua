-- Use obsidian from within neovim
return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = os.getenv("OBSIDIAN_VAULT"),
      },
    },
    ui = {
      enable = false,
    },
  },
}
