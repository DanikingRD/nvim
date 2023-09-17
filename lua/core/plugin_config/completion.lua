local cmp = require("cmp")

cmp.setup({
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
    	['<C-n>'] = cmp.mapping.select_next_item(),
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({
      	behavior = cmp.ConfirmBehavior.Insert,
      	select = true,
    	})
	},
	snippet = {
    	expand = function(args)
        	vim.fn["vsnip#anonymous"](args.body)
    	end,
  	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	sources = cmp.config.sources(
	{ name = 'path' },        -- file paths
	{
		{ name = 'nvim_lsp' }, -- From language server
	},
	{
		{ name = 'nvim_lsp_signature_help' }	
	},
	{ name = 'vsnip', keyword_length = 2 }, 
	{
		{ name = 'buffer' }, -- Source current buffer
	}
	),
})
