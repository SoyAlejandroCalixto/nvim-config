require('noice').setup({
  routes = {
    {
      filter = {
        event = "msg_show",
        any = {
          { find = "more lines" },
          { find = "fewer lines" },
          { find = "cambio[s]?;" },
          { find = "Este es el cambio más" },
          { find = "line[s]? yanked" },
          { find = "escritos" },
          { find = "lines indented" },
        },
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "lsp",
        kind = "progress",
        find = "jdtls"
      },
      opts = { skip = true }
    },
    {
      filter = {
        error = true,
        find = "server cancelled the request"
      },
      opts = { skip = true }
    }
  },
})
