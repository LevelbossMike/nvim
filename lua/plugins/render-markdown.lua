return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    checkbox = {
      enabled = true,
      render_modes = true,
      right_pad = 1,
      checked = {
        icon = "✅", -- checkmark
        highlight = "RenderMarkdownChecked",
      },
      custom = {
        -- In progress
        wip = {
          raw = "[/]",
          rendered = "🚧", -- construction sign
          highlight = "DiagnosticInfo", -- Blue color
        },
        -- Need more info
        question = {
          raw = "[?]",
          rendered = "❓", -- Question mark
          highlight = "DiagnosticWarn", -- Yellow color
        },
        -- Important
        important = {
          raw = "[!]",
          rendered = "⚠️", -- Warning
          highlight = "DiagnosticError", -- Red color
        },
        -- Scheduled/Forwarded
        scheduled = {
          raw = "[>]",
          rendered = "⏩", -- Fast forward button
          highlight = "Special", -- Purple-ish color
        },
        -- Canceled - todo exists by default, thus we need to override it
        -- See default config of render-markdown.nvim
        todo = {
          raw = "[-]",
          rendered = "❌", -- Cross mark
          highlight = "Comment", -- Gray color
        },
      },
    },
  },
}
