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
      setup = {
        tailwindcss = function(_, opts)
          local tw = LazyVim.lsp.get_raw_config("tailwindcss")
          local util = require("lspconfig.util")

          -- 1. Filetype handling
          opts.filetypes = opts.filetypes or {}
          vim.list_extend(opts.filetypes, tw.default_config.filetypes)
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})

          -- 2. Root detection with Tailwind config priority
          local function find_tailwind_root(fname)
            return util.root_pattern(
              "tailwind.config.js",
              "tailwind.config.cjs",
              "postcss.config.js",
              "package.json" -- Fallback for monorepo packages
            )(fname)
          end

          -- 3. Configure per-project node_modules
          opts.on_new_config = function(new_config, root_dir)
            new_config.settings = new_config.settings or {}
            new_config.settings.tailwindCSS = {
              includeLanguages = {
                elixir = "html-eex",
                eelixir = "html-eex",
                heex = "html-eex",
                ["typescript.glimmer"] = "html",
                ["javascript.glimmer"] = "html",
                gts = "html", -- Your custom filetype
              },
              nodePath = root_dir .. "/node_modules", -- Critical for PNPM
            }
          end

          -- 4. Root directory resolution
          opts.root_dir = function(fname)
            return find_tailwind_root(fname) or util.find_git_ancestor(fname)
          end
        end,
      },
    },
  },
}
