local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome", "prettier" },
    javascriptreact = { "biome", "prettier" },
    typescript = { "biome", "prettier" },
    typescriptreact = { "biome", "prettier" },
    tsx = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    html = { "prettier" },
    yaml = { "yq", "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    vue = { "prettier" },
    json = { "biome", "prettier" },
    python = { "isort", "black" },
    go = { "gofumpt", "golines", "goimports" },
    sh = { "shfmt" },
    php = { "php-cs-fixer" },
    proto = { "buf" },
    rust = { "rustfmt", lsp_format = "fallback" },
  },

  -- format_on_save = {
  --   lsp_fallback = true,
  --   async = false,
  --   timeout_ms = 2000,
  -- },
}

return options
