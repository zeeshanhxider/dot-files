return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()

    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#A3C687' })
    vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#A3C687' })
    vim.api.nvim_set_hl(0, 'DashboardKey', { fg = '#A3C687', bold = true })
    vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#A3C687' })
    vim.api.nvim_set_hl(0, 'DashboardShortCut', { fg = '#A3C687' })
    
    require('dashboard').setup {
      theme = 'doom',
      
      config = {
        header = {
          "",
          "=================     ===============     ===============   ========  ========",
          "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
          "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
          "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
          "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
          "|| . .||   ||. _-|| ||-_ .||   ||. . || ||. . ||   ||. _-|| ||-_.|\\ . . . . ||",
          "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
          "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
          "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
          "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
          "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
          "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
          "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
          "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
          "||   .=='    _-'          '-__\\._-'         '-_./__-'         `' |. /|  |   ||",
          "||.=='    _-'                                                     `' |  /==.||",
          "=='    _-'                        N E O V I M                         \\/   `==",
          "\\   _-'                                                                `-_   /",
          " `''                                                                      ``'",
          "",
        },
        
        center = {
          {
            icon = '󰈞  ',
            desc = 'Find File           ',
            key = 'f',
            key_format = ' [%s]',
            action = 'Telescope find_files'
          },
          {
            icon = '󰈬  ',
            desc = 'Grep File           ',
            key = 'g',
            key_format = ' [%s]',
            action = 'Telescope live_grep'
          },
          {
            icon = '  ',
            desc = 'New File            ',
            key = 'n',
            key_format = ' [%s]',
            action = 'enew'
          },
          {
            icon = '󱑁  ',
            desc = 'Recent              ',
            key = 'r',
            key_format = ' [%s]',
            action = 'Telescope oldfiles'
          },
          {
            icon = '  ',
            desc = 'Config              ',
            key = 'c',
            key_format = ' [%s]',
            action = 'edit ~/.config/nvim/init.lua'
          },
          {
            icon = '󱍢  ',
            desc = 'Quit                ',
            key = 'q',
            key_format = ' [%s]',
            action = 'qa'
          },
        },
      },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
