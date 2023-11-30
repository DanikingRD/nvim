local conform = require("conform");

conform.setup({
    formatters_by_ft = {
        c = { "clang-format" },
    },
    format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 600,
    }
})

vim.keymap.set('n','<C-s>', function()
    conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 600,
    })
end)
