-- install glint language server
return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "glint")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes_include = {
            "typescript.glimmer",
            "javascript.glimmer",
          },
        },
        eslint = {
          filetypes = {
            "javascript",
            "typescript",
            "vue",
            "svelte",
            "typescript.glimmer",
            "javascript.glimmer",
          },
        },
      },
    },
  },
}
