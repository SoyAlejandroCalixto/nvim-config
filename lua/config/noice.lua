require('noice').setup({
    routes = {
        { filter = { event = 'msg_show', find = 'línea más' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'líneas más' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'línea menos' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'líneas menos' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'fewer lines' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'cambio;' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'cambios;' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'Este es el cambio más' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'lines yanked' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'escritos' }, opts = { skip = true }, },
        { filter = { event = 'msg_show', find = 'lines indented' }, opts = { skip = true }, },
        { filter = { error = true, find = 'server cancelled the request' }, opts = { skip = true }, },
    },
})
