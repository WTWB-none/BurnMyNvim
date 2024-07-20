return {
  "nvimdev/dashboard-nvim",
  config = function()
    require("dashboard").setup({
      theme = "doom",
      config = {
        header = {
          "                                                                              ",
          "=================     ===============     ===============   ========  ========",
          "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
          "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
          "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
          "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
          "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
          "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
          "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
          "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
          "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
          "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
          "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
          "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
          "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
          "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
          "||.=='    _-'                                                     `' |  /==.||",
          "=='    _-'                        N E O V I M                         \\/   `==",
          "\\   _-'                                                                `-_   /",
          " `''                                                                      ``'  ",
        },
        center = {
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Find file",
            desc_hl = "DashboardDesc",
            key = "f",
            key_hl = "DashboardKey",
            key_format = "f", -- `%s` will be substituted with value of `key`
            action = LazyVim.pick(),
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "New file",
            desc_hl = "DashboardDesc",
            key = "n",
            key_hl = "DashboardKey",
            key_format = "n",
            action = "ene <BAR> startinsert",
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Recent files",
            desc_hl = "DashboardDesc",
            key = "r",
            key_hl = "DashboardKey",
            key_format = "r",
            action = LazyVim.pick("oldfiles"),
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Find text",
            desc_hl = "DashboardDesc",
            key = "g",
            key_hl = "DashboardKey",
            key_format = "g",
            action = LazyVim.pick("live_grep"),
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Config",
            desc_hl = "DashboardDesc",
            key = "c",
            key_hl = "DashboardKey",
            key_format = "c",
            action = LazyVim.pick.config_files(),
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Restore session                   ",
            desc_hl = "DashboardDesc",
            key = "s",
            key_hl = "DashboardKey",
            key_format = "s",
            action = 'lua require("persistence").load()',
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Lazy Extras",
            desc_hl = "DashboardDesc",
            key = "x",
            key_hl = "DashboardKey",
            key_format = "x",
            action = "LazyExtras",
          },
          {
            icon = "󰒲  ",
            icon_hl = "DashboardIcon",
            desc = "Lazy",
            desc_hl = "DashboardDesc",
            key = "l",
            key_hl = "DashboardKey",
            key_format = "l",
            action = "Lazy",
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Quit",
            desc_hl = "DashboardDesc",
            key = "q",
            key_hl = "DashboardKey",
            key_format = "q",
            action = "qa",
          },
        },
        footer = {
          "Watch The World Burn",
        },
      },
      hide = {
        statusline = false,
      },
    })
    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#e6359c" })
    vim.api.nvim_set_hl(0, "DashboardDesc", { fg = "#76AED8" })
    vim.api.nvim_set_hl(0, "DashboardIcon", { fg = "#e6359c" })
    vim.api.nvim_set_hl(0, "DashboardKey", { fg = "#e6359c" })
    vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#e6359c" })
    vim.keymap.set("n", "<leader>gh", "<cmd>Dashboard<CR>", { desc = "Go to dashboard" })
  end,
}