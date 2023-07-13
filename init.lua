-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt

opt.relativenumber = true -- Show relative numberline
opt.scrolloff = 8 -- Number of lines to keep above and below the cursorline
opt.pumheight = 10 -- Height of the pop up menu
opt.wrap = false -- Disable wrapping of lines longer than the width of window
opt.breakindent = true -- Wrap indent to match  line start

local enable_providers = {
  "python3_provider",
  "node_provider",
  -- and so on
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end
