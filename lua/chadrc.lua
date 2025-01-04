-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.stbufnr = function()
  return vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
end

M.base46 = {
  theme = "oceanic-next",
}

M.ui = {
  statusline = {
    enabled = true,
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    order = { "mode", "relative_path", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      -- https://github.com/rakotomandimby/ui/commit/6eee0f7f388b2511b556c82332da68dfc805c3cd#diff-eb947c2bdcfd8e75c5ad65b2da39f6dcf4bdd29c8fe7323977bb80381374cb5fR94
      relative_path = function()
        return "%#St_file# " .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(M.stbufnr()), ":.") .. "%#St_file_sep#"
      end,
    },
  },
}

return M
