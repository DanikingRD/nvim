
require("mason").setup()
require("mason-lspconfig").setup{
	ensure_installed = { "rust_analyzer", "clangd" }
}

local caps = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, buf)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>g', vim.lsp.buf.code_action, {})
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").rust_analyzer.setup {
	capabilities = caps,
	on_attach = on_attach
}
require("lspconfig").clangd.setup {
	capabilities = caps,
	on_attach = on_attach,
}
