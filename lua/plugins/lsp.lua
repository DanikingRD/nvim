
require("mason").setup()
require("mason-lspconfig").setup{
	ensure_installed = { "rust_analyzer", "clangd" }
}

local caps = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, buf)
	vim.keymap.set('n', 'ga', '<cmd>Lspsaga finder<CR>', {}) -- show definition, references
	vim.keymap.set('n', '<F2>', '<cmd>Lspsaga rename<CR>', {})
	vim.keymap.set('n', '<leader>g', '<cmd>Lspsaga code_action<CR>', {})
    vim.keymap.set('n', 'pd', '<cmd>Lspsaga peek_definition<CR>', {})
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', {})
end

require("lspconfig").rust_analyzer.setup {
	capabilities = caps,
	on_attach = on_attach
}
require("lspconfig").clangd.setup {
	capabilities = caps,
	on_attach = on_attach,
}

-- LSP saga stuff
require('lspsaga').setup({
    ui = {
        colors = {
            normal_bg = "#022746",
        },
    },
})
