return {
  -- 1. Configure TokyoNight to default to Storm, but tell Lazy NOT to load it here
  {
    "folke/tokyonight.nvim",
    lazy = true, -- Prevent early initialization
    opts = {
      style = "storm",
    },
  },

  -- 2. Force LazyVim to wait until the session is fully awake to attach the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- Leave this empty or use "tokyonight" so LazyVim doesn't try to look for its default
      colorscheme = "tokyonight",
    },
    init = function()
      -- Fire the theme on VeryLazy event (after UI, environment, and windows are alive)
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          vim.cmd([[colorscheme tokyonight]])
        end,
      })
    end,
  },
}
