return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                view = {
                  width = 38,
                }
            })
            vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
        end
    }
}
