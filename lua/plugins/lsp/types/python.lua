vim.lsp.config("pyright", {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                diagnosticMode = "workspace",
            },
        },
    },
})

vim.lsp.enable("pyright")
