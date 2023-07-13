---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- half page jump
    ["<C-d>"] = { "<C-d>zz", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", opts = { nowait = true } },

    -- JJ simply
    ["J"] = { "mzJ`z", opts = { nowait = true} },

    -- keep cursor in middle while searching
    ["n"] = { "nzzzv", opts = { nowait = true } },
    ["N"] = { "Nzzzv" , opts = { nowait = true } },

    -- replace word under cursor
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts = { nowait = true }},

    -- yank into system clipboard
    ["<leader>y"] = { [["+y]], opts = { nowait = true } },
    ["<leader>Y"] = { [["+Y]], opts = { nowait = true } },

    -- chmod +x file
    -- ["<leader>x"] = { "<cmd>!chmod +x %<CR>", opts = { silent = true, nowait = true } },
  },

  v = {
    -- move lines
    ["J"] = { ":m '>+1<CR>gv=gv", opts = { nowait = true } },
    ["K"] = { ":m '<-2<CR>gv=gv", opts = { nowait = true } },

    -- yank into system clipboard
    ["<leader>y"] = { [["+y]], opts = { nowait = true } },
  },

  i = {
    ["<C-/>"] = { "<C-o>j", opts = { nowait = true } },
  }
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  }
}

return M
