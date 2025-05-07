return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
    },
    heading = {
      sign = false,
      icons = {},
    },
    checkbox = {
      enabled = true,
      render_modes = false,
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
        -- Canceled
        canceled = {
          raw = "[-]",
          rendered = "❌", -- Cross mark
          highlight = "Comment", -- Gray color
        },
      },
    },
  },
}
