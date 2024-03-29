return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Add any other formatters desired, and do same below
        "black",
        "prettier",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        ---@type table<string, conform.FormatterUnit[]>
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
        },
      }
      return opts
    end,
  },
}
