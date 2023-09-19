-- This needs work, Extract Block works, but nothing else does.

return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {},
  config = function(_, opts)
    require("refactoring").setup(opts)
    require("telescope").load_extension("refactoring")
  end,
  keys = {
    {
      "<leader>cr",
      function()
        require("telescope").extensions.refactoring.refactors()
      end,
      mode = "v",
      desc = "Refactor",
    },
    {
      "<leader>cei",
      function()
        require("refactoring").refactor("Inline Variable")
      end,
      mode = "v",
      desc = "Inline var",
    },
    {
      "<leader>cef",
      function()
        require("refactoring").refactor("Extract Function")
      end,
      mode = "v",
      desc = "Extract func",
    },
    {
      "<leader>ceF",
      function()
        require("refactoring").refactor("Extract Function To File")
      end,
      mode = "v",
      desc = "Extract func to file",
    },
    {
      "<leader>ceb",
      function()
        require("refactoring").refactor("Extract Block")
      end,
      mode = "v",
      desc = "Extract block",
    },
    {
      "<leader>cev",
      function()
        require("refactoring").refactor("Extract Variable")
      end,
      mode = "v",
      desc = "Extract var",
    },
  },
}
