return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    config = function()
      vim.opt.background = "dark"
    end,
    init = function()
      vim.cmd.colorscheme("oxocarbon")
    end,
  },
}
