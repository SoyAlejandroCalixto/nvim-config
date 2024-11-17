return {
    {
        "vim-airline/vim-airline",
        config = function()
            vim.g.airline_section_y = ''
            vim.g.airline_section_z = '%l:%c'
            vim.g.airline_theme = 'onedark'
        end
    },
    {
        "vim-airline/vim-airline-themes"
    }
}
