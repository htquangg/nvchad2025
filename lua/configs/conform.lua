local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome", "prettier" },
    javascriptreact = { "biome", "prettier" },
    typescript = { "biome", "prettier" },
    typescriptreact = { "biome", "prettier" },
    tsx = { "biome", "prettier" },
    css = { "biome" },
    scss = { "prettier" },
    html = { "prettier" },
    yaml = { "yq", "prettier" },
    markdown = { "prettier" },
    graphql = { "biome", "prettier" },
    vue = { "prettier" },
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
