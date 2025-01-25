-- NOTE: Mason is just a package manager, formatters will also need to be setup
-- with conform.nvim
return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Add any other formatters desired, and do same below
        "black",
        "prettier",
        "clang-format",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        ---@type table<string, string[]>
        -- This is below
        formatters_by_ft = {
          python = { "black" },
          html = { "prettier" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          json = { "prettier" },
          markdown = { "prettier" },
          yaml = { "prettier" },
          css = { "prettier" },
          go = { "gofumpt" },
          java = { "clang-format" },
          c = { "clang-format" },
          proto = { "clang-format" },
          bash = { "shfmt" },
          lua = { "stylua" },
          xml = { "xmlformatter" },
        },
      }
      return opts
    end,
  },
}
