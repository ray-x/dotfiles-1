-- For dark theme
vim.g.vscode_style = "dark"
-- For light theme
-- vim.g.vscode_style = "light"
-- Enable transparent background.
vim.g.vscode_transparent = 1
vim.cmd [[
try
  colorscheme vscode
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
