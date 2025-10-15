return {
  {
    "scottmckendry/cyberdream.nvim",
    config = function()
      require("cyberdream").setup({
        transparent = true,
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
