return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      javascript = { "eslint" },
      typescript = { "eslint" },
      ["javascript.glimmer"] = { "eslint" },
      ["typescript.glimmer"] = { "eslint" },
    },
  },
}
