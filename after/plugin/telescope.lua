local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>fs', function()
  local input_string = vim.fn.input("Search (case-sensitive) > ")

  if (input_string == '') then
    return
  end

  builtin.grep_string({ search = input_string })
end)

vim.keymap.set('n', '<leader>fr', function()
  local input_string = vim.fn.input("Search (REGEX) > ")

  if (input_string == '') then
    return
  end

  builtin.grep_string({ search = input_string, use_regex = true })
end)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
