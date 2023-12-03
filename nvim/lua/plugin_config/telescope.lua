
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.git_files, {})
vim.keymap.set('n', '<leader>F', builtin.find_files, {})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})

local actions = require("telescope.actions")

require("telescope").setup{
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
                ["<c-j>"] = actions.move_selection_next,
                ["<c-k>"] = actions.move_selection_previous,
            }
        }
    }
}

vim.cmd[[
  silent! !git rev-parse --is-inside-work-tree
  if v:shell_error == 0
    noremap <leader>f <cmd>Telescope git_files<cr>
  else
    noremap <leader>f <cmd>Telescope find_files<cr>
  endif
]]
