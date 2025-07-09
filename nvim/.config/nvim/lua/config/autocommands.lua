-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Turn on line wrapping for .md and .txt files
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = { '*.md', '*.txt' },
  group = group,
  command = 'setlocal wrap'
})

-- vim: ts=2 sts=2 sw=2 et
