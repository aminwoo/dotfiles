vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-c>",
      ":w<bar>:split<CR>:te go run % <CR>i",
      { noremap = true, silent = true }
    )
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-c>",
      ":w<bar>:split<CR>:te RUSTFLAGS='-C target-cpu=native' cargo run --release <CR>i",
      { noremap = true, silent = true }
    )
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-c>",
      ":w<bar>:split<CR>:te poetry run python %<CR>i",
      { noremap = true, silent = true }
    )
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<C-c>", ":w<bar>:split<CR>:te node %<CR>i", { noremap = true, silent = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-c>",
      ":w<bar>:split<CR>:te npx tsx %<CR>i",
      { noremap = true, silent = true }
    )
  end,
})

