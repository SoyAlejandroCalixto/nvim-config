return {
    {
        'neovim/nvim-lspconfig', -- config language servers
        cond = not vim.g.vscode
    },
    {
        'williamboman/mason.nvim', -- install language servers and linters
        cond = not vim.g.vscode
    },
    {
        'williamboman/mason-lspconfig.nvim', -- integrates mason with lspconfig
        cond = not vim.g.vscode
    },
    {
        'mfussenegger/nvim-lint', -- config linters
        cond = not vim.g.vscode
    },
    {
        'rshkarin/mason-nvim-lint', -- integrates mason with nvim-lint
        cond = not vim.g.vscode
    },
    {
        'L3MON4D3/LuaSnip', -- snippets
        cond = not vim.g.vscode
    },
    {
        'nvim-treesitter/nvim-treesitter', -- syntax highlighting
        cond = not vim.g.vscode
    },
    {
        'b0o/schemastore.nvim', -- JSON schemas
        cond = not vim.g.vscode
    },
    {
        'hrsh7th/nvim-cmp', -- autocompletion menu
        cond = not vim.g.vscode
    },
    {
        'hrsh7th/cmp-nvim-lsp', -- autocompletion menu source
        cond = not vim.g.vscode
    },
    {
        'amber-lang/amber-vim', -- amber lang support
        cond = not vim.g.vscode
    }
}
