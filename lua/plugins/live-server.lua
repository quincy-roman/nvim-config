return {
  "barrett-ruth/live-server.nvim",
  -- build = "npm i -g live-server",
  config = true,
  keys = {
    { "<leader>cLs", "<cmd>LiverServerStart<CR>", desc = "Live Server Start" },
    { "<leader>cLS", "<cmd>LiverServerStop<CR>", desc = "Live Server Start" },
  },
}
