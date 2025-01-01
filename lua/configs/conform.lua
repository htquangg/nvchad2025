local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    tsx = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    html = { "prettier" },
    yaml = { "yamlfix" },
    vue = { "prettier" },

    go = { "goimports", "gofumpt" },

    sh = { "shfmt" },
    php = { "php-cs-fixer" },
    proto = { "buf" },
    rust = { "rustfmt", lsp_format = "fallback" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
