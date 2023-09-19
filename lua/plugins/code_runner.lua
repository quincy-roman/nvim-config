return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "python -u",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        c = {
          "cd $dir &&",
          "gcc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        javascript = "node $fileName",
        scala = {
          "cd $dir &&",
          "scalac $fileName &&",
          "scala $fileNameWithoutExt &&",
          "rm *.class *.tasty",
        },
        elixir = "elixir $file",
        go = "go run $file",
      },
    })
  end,
  keys = {
    { "<leader>rc", "<cmd>RunCode<CR>", desc = "Run code" },
    { "<leader>rf", "<cmd>RunFile<CR>", desc = "Run current file" },
    { "<leader>rd", "<cmd>RunClose<CR>", desc = "Close runner" },
  },
  opts = {
    mode = "toggleterm",
  },
}
