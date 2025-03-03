local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome", "prettier", "eslint_d" },
    javascriptreact = { "biome", "prettier", "eslint_d" },
    typescript = { "biome", "prettier", "eslint_d" },
    typescriptreact = { "biome", "prettier", "eslint_d" },
    tsx = { "biome", "prettier", "eslint_d" },
    css = { "biome" },
    scss = { "prettier", "eslint_d" },
    html = { "prettier", "eslint_d" },
    yaml = { "yq", "prettier", "eslint_d" },
    markdown = { "prettier", "eslint_d" },
    graphql = { "biome", "prettier", "eslint_d" },
    vue = { "prettier", "eslint_d" },
    json = { "biome" },
    python = { "isort", "black" },
    go = { "gofumpt", "golines", "goimports" },
    sh = { "shfmt" },
    php = { "php-cs-fixer" },
    proto = { "buf" },
    rust = { "rustfmt", lsp_format = "fallback" },
  },
  formatters = {
    biome = {
      command = "biome",
      args = {
        "check",
        "--formatter-enabled=true",
        "--linter-enabled=false",
        "--organize-imports-enabled=true",
        "--write",
        "--stdin-file-path",
        "$FILENAME",
      },
    },
  },

  -- format_on_save = {
  --   lsp_fallback = true,
  --   async = false,
  --   timeout_ms = 2000,
  -- },
}

return options
