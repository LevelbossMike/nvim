return {
  "neovim/nvim-lspconfig",

  opts = {
    servers = {
      eslint = {
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.glimmer",
          "javascript.jsx",
          "javascript.glimmer",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
          "typescript.glimmer",
          "vue",
          "svelte",
          "astro",
          "htmlangular",
        },
      },
    },
  },
}
