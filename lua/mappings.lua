-- require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
map("n", "<C-b>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- telescope
map(
  "n",
  "<leader>fW",
  "<cmd>Telescope live_grep follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope live grep all files" }
)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

map("n", "<leader>ol", "<cmd>ObsidianQuickSwitch<CR>", { desc = "obsidian quick switch" })
map("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "obsidian quick switch" })

map("n", "<leader>th", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- split navigation
map("n", "ss", "<C-w>s", { desc = "Split" })
map("n", "sv", "<C-w>v", { desc = "VSplit" })

-- lazydocker
map("n", "<leader>ld", "<cmd>LazyDocker<CR>", { desc = "Split" })

-- terminal
map({ "n", "t" }, "<F1>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

map({ "n", "t" }, "<F2>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

-- easymotion
local hop = require "hop"
local directions = require("hop.hint").HintDirection

map("n", "f", function()
  hop.hint_char1 { direction = directions.AFTER_CURSOR }
end, { desc = "Split" })

map("n", "F", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR }
end, { desc = "Split" })

-- git
map("n", "<leader>hs", function()
  require("gitsigns").stage_hunk()
end, { desc = "stage git hunk" })

map("n", "<leader>hu", function()
  require("gitsigns").undo_stage_hunk()
end, { desc = "unstage git hunk" })

map("n", "<leader>hr", function()
  require("gitsigns").reset_hunk()
end, { desc = "reset git hunk" })

map("n", "<leader>hp", function()
  require("gitsigns").preview_hunk()
end, { desc = "preview hunk" })

map("n", "<leader>hd", function()
  require("gitsigns").diffthis()
end, { desc = "diff this page" })

map("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, { desc = "blame line" })

map("n", "<leader>gB", "<cmd>Gitsigns blame<CR>", { desc = "blame all" })
map("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", { desc = "git prev hunk" })
map("n", "]c", "<cmd>Gitsigns next_hunk<CR>", { desc = "git next hunk" })

map("n", "<leader>gl", "<cmd>Flog<CR>", { desc = "git graph" })
map("n", "<leader>gs", "<cmd>Git<CR>", { desc = "open fugutive" })
map("n", "<leader>gj", ":diffget //2<CR>", { desc = ":diffget //2<CR>" })
map("n", "<leader>gk", ":diffget //3<CR>", { desc = ":diffget //3<CR>" })

-- diagnostic
map("n", "[e", function()
  vim.diagnostic.goto_prev { float = { border = "rounded" } }
end, { desc = "go to prev diagnostic" })
map("n", "]e", function()
  vim.diagnostic.goto_next { float = { border = "rounded" } }
end, { desc = "go to next diagnostic" })
map("n", "<leader>le", "<cmd>Telescope diagnostics<CR>", { desc = "diagnostic in workspace" })

-- fzf lua
require("fzf-lua").setup {
  "telescope", -- "telescope", "fzf-native", "fzf-vim", "default"
  winopts = {
    height = 0.85, -- window height
    width = 0.80, -- window width
    row = 0.35, -- window row position (0=top, 1=bottom)
    col = 0.50, -- window col position (0=left, 1=right)
    border = "rounded", -- 'none', 'single', 'double', 'thicc' or 'rounded'
    fullscreen = false, -- start fullscreen?
  },
  grep = {
    actions = {
      ["ctrl-h"] = require("fzf-lua.actions").toggle_hidden,
      ["ctrl-i"] = require("fzf-lua.actions").toggle_ignore,
    },
    rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e",
    grep_opts = "--binary-files=without-match --line-number --recursive --color=auto --perl-regexp -e",
    rg_glob = true,
  },
  files = {
    actions = {
      ["ctrl-g"] = require("fzf-lua.actions").toggle_ignore,
    },
  },
  lsp = {
    code_actions = {
      previewer = "codeaction_native",
      preview_pager = "delta --side-by-side --width=$FZF_PREVIEW_COLUMNS --hunk-header-style='omit' --file-style='omit'",
      prompt = "Code Actions󰅂 ",
      -- ui_select = false, -- use 'vim.ui.select'?
      async_or_timeout = 5000,
      winopts = {
        -- row = 0.40,
        -- height = 0.60,
        -- width = 0.60,
        preview = {
          border = "border-thinblock",
          layout = "vertical",
          vertical = "up:75%",
        },
      },
    },
  },
}

map("n", "<leader>fw", "<cmd>FzfLua live_grep_native<CR>", { desc = "fzflua live grep native" })
-- map(
--   "n",
--   "<leader>fW",
--   "<cmd>FzfLua live_grep follow=true no_ignore=true hidden=true<CR>",
--   { desc = "fzflua live grep all files" }
-- )
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "fzflua find files" })
map("n", "<leader>fc", "<cmd>FzfLua grep_cword<cr>", { desc = "fzflua grep cword" })

-- other stuff
map("v", ">", ">gv", { desc = "indent" })
map("v", "<", "<gv", { desc = "indent" })

-- restore cursor position
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})

---------------------
-- Copy absolute & relative file path
---------------------

map("n", "<leader>cr", function()
  vim.cmd "let @+=expand('%')"
end, { noremap = true, silent = true, desc = "Copy relative file path" })

map("n", "<leader>cc", function()
  vim.cmd "let @+=expand('%:p')"
end, { noremap = true, silent = true, desc = "Copy complete/absolute file path" })

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<c-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<c-k>", ":move '<-2<CR>gv-gv", opts)
