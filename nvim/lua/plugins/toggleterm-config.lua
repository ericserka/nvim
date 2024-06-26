local toggleterm = require("toggleterm")

toggleterm.setup({
  open_mapping = [[<C-\>]], -- Same to hide and persist session
  direction = 'float',
  float_opts = {
    border = 'curved'
  }
})

-- Remap exit terminal mode hotkey
vim.api.nvim_set_keymap('t', '<C-d>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Test project
vim.api.nvim_set_keymap(
  'n',
  '<leader>tp',
  ':TermExec cmd="mix test" dir="."<CR>',
  { noremap = true, silent = true }
)

-- Test file
vim.api.nvim_set_keymap(
  'n',
  '<leader>tf',
  ':TermExec cmd="mix test %" dir="."<CR>',
  { noremap = true, silent = true }
)

-- Pre commit
vim.api.nvim_set_keymap('n', '<leader>pc',
  ':TermExec cmd="mix format && mix compile --warnings-as-errors && mix credo && mix test" dir="."<CR>',
  { noremap = true, silent = true })

-- Test on cursor
vim.api.nvim_set_keymap(
  'n',
  '<leader>tt',
  ':lua TestWithLineNumber()<CR>',
  { noremap = true, silent = true }
)

function TestWithLineNumber()
  local line_number = vim.fn.line('.')

  vim.cmd(
    string.format(
      ':TermExec cmd="mix test %s:%d" dir="."<CR>',
      vim.fn.expand('%:p'),
      line_number
    )
  )
end
