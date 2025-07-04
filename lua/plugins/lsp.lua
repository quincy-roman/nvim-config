return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {
        -- There should be a filetypes_include but wasn't working
        -- filetypes_include = { "heex", "html" },
        filetypes = { "heex", "html" },
      },
      -- Some issue with rust
      rust_analyzer = {
        mason = false,
      },
    },
    inlay_hints = { enabled = false },
  },
}
