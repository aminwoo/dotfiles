require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "m", function()
	vim.diagnostic.goto_next()
end)

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Mapping for opening Lazygit in a floating terminal
map('n', '<leader>gg', ':lua Lazygit()<CR>')

-- Function to open Lazygit in a floating terminal
function Lazygit()
   local buf = vim.api.nvim_create_buf(false, true) -- Create a new, empty buffer
   local lazygit_win = vim.api.nvim_open_win(buf, true, {
      relative = 'editor',
      width = math.floor(vim.o.columns * 0.9),
      height = math.floor(vim.o.lines * 0.9),
      row = math.floor(vim.o.lines * 0.05),
      col = math.floor(vim.o.columns * 0.05),
      style = 'minimal',
      border = 'single'
   })
   vim.fn.termopen('lazygit', {
    on_exit = function() 
      vim.api.nvim_win_close(lazygit_win, true)
    end
  })
   vim.cmd('startinsert') -- Enter insert mode in terminal
end

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

map("n", "<C-t>", function() harpoon:list():select(1) end)
map("n", "<C-g>", function() harpoon:list():select(2) end)
map("n", "<C-v>", function() harpoon:list():select(3) end)
map("n", "<C-q>", function() harpoon:list():select(4) end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
