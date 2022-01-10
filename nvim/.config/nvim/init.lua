vim.cmd([[set runtimepath=$VIMRUNTIME]])
vim.cmd([[set packpath=/tmp/nvim/site]])

vim.cmd([[exe 'set rtp+=' . expand('~/tmp/dotfiles/nvim/.config/nvim')]])
function load_plugins()
  require("options")
  require("keymaps")
  require("plugins")
  require("colorscheme")
  require("config.cmp")
  require("config.lsp")
  require("config.telescope")
  require("config.treesitter")
  require("config.autopairs")
  require("config.comment")
  require("config.gitsigns")
  require("config.nvim-tree")
  require("config.barbar")
  require("config.lualine")
  require("config.toggleterm")
  require("config.project")
  -- require("config.impatient")
  require("config.indentline")
  require("config.alpha")
  require("autocommands")
  require("config.quickscope")
  require("config.hop")
  require("config.matchup")
  require("config.numb")
  require("config.dial")
  require("config.colorizer")
  require("config.spectre")
  require("config.zen-mode")
  require("config.neoscroll")
  require("config.todo-comments")
  require("config.renamer")
  require("config.symbol-outline")
  require("config.gitlinker")
  require("config.session-manager")
  require("config.surround")
  require("config.trouble")
  require("config.notify")
  require("config.ts-context")
  require("config.registers")
  require("config.cheatsheet")
  require("config.nvimcheat")
  require("config.navigator")
  require("config.whichkey")
end

if vim.fn.isdirectory(install_path) == 0 then
  local package_root = "/tmp/nvim/site/pack"
  local install_path = package_root .. "/packer/start/packer.nvim"
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  load_plugins()
  -- require("packer").sync()
else
  load_plugins()
end
