local dashboard = require('dashboard')
local conf = {}

conf.header = {
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                         ████                          ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                       ████████                        ',
  '              ██████████████████████████               ',
  '              ██████████████████████████               ',
  '              ██████████████████████████               ',
  '                       ████████                        ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                        ██████                         ',
  '                         ████                          ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
}

conf.center = {
  {
    icon = '󰈢  ',
    desc = 'Abrir archivo                           ',
    action = 'Telescope find_files',
    key = 'espacio f',
  },
  {
    icon = '󰈞  ',
    desc = 'Grepear directorio                      ',
    action = 'Telescope live_grep',
    key = 'espacio g',
  },
  {
    icon = '󰊢  ',
    desc = 'Commits del directorio                  ',
    action = 'Telescope git_commits',
    key = 'espacio c',
  },
  {
    icon = '  ',
    desc = 'Nuevo archivo                           ',
    action = 'enew',
    key = 'n',
  },
  {
    icon = '󰒲  ',
    desc = 'Plugins                                 ',
    action = 'Lazy',
    key = 'p',
  },
  {
    icon = '󰗼  ',
    desc = 'Salir de Neovim                         ',
    action = 'qa',
    key = 'q',
  },
}

dashboard.setup({
  theme = 'doom',
  shortcut_type = 'number',
  config = conf
})
