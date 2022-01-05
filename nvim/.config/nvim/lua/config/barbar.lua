local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous ALT + h
keymap('n', '˙', ':BufferPrevious<CR>', opts)
-- Move to next ALT + l
keymap('n', '¬', ':BufferNext<CR>', opts)
-- Re-order to previous ALT + ,
keymap('n', '≤', ':BufferMovePrevious<CR>', opts)
-- Re-order to next ALT + .
keymap('n', '≥', ' :BufferMoveNext<CR>', opts)

-- Close buffer ALT + c
keymap('n', 'ç', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode ALT + p
keymap('n', 'π', ':BufferPick<CR>', opts)
-- Sort automatically by...
-- keymap('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
-- keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
-- keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)