return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {
        -- There should be a filetypes_include but wasn't working
        -- filetypes_include = { "heex", "html" },
        filetypes = { "heex", "html" },
      },
    },
    inlay_hints = { enabled = false },
  },
}
