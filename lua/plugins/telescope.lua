local Util = require("lazyvim.util")
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
      config = function()
        Util.on_load("telescope.nvim", function()
          require("telescope").load_extension("live_grep_args")
        end)
      end,
    },
  },

  keys = {
    { "<leader>t", "<cmd>lua require('telescope.builtin').find_files()<cr>" },
    { "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>" },
    { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>" },
    { "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>" },
  },

  opts = function(_, opts)
    local lga_actions = require("telescope-live-grep-args.actions")

    opts.extensions = vim.tbl_deep_extend("force", opts.extensions or {}, {
      live_grep_args = {
        auto_quoting = true, -- enable/disable auto-quoting
        -- define mappings, e.g.
        mappings = { -- extend mappings
          i = {
            ["<C-j>"] = lga_actions.quote_prompt(),
            ["<C-u>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          },
        },
        -- ... also accepts theme settings, for example:
        -- theme = "dropdown", -- use dropdown theme
        -- theme = { }, -- use own theme spec
        -- layout_config = { mirror=true }, -- mirror preview pane
      },
    })
  end,
}
