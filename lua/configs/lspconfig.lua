-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local map = vim.keymap.set

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "gopls",
  "bashls",
  "yamlls",
  "jsonls",
  "tailwindcss",
  "dockerls",
  "lua_ls",
  "rust_analyzer",
}
local nvlsp = require "nvchad.configs.lspconfig"

nvlsp.on_attach = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end

  map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")

  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts "List workspace folders")

  map("n", "<leader>D", vim.lsp.buf.type_definition, opts "Go to type definition")
  map("n", "<leader>rr", require "nvchad.lsp.renamer", { desc = "NvRenamer" })

  map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "Code action")

  map("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", { desc = "Go to definition" })
  map("n", "gD", "<cmd>FzfLua lsp_declarations<CR>", { desc = "Go to declaration" })
  map("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", { desc = "Go to implementation" })
  map("n", "gr", "<cmd>FzfLua lsp_references<CR>", { desc = "Go to implementation" })
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
