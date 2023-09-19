return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup({
      cmd = "/home/metsuryuu/.elixir-ls/release/language_server.sh",
      settings = elixirls.settings({
        dialyzerEnabled = false,
        enableTestLenses = false,
        fetchDeps = false,
        suggestSpecs = false,
      }),
      -- elixirls = {
      --   enable = true,
      -- on_attach = function(client, bufnr)
      --   vim.keymap.set("n", "<leader>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
      --   vim.keymap.set("n", "<leader>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
      --   vim.keymap.set("n", "<leader>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
      -- end,
      -- },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
