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
-- it's replaced by barbar
--require("config.bufferline")
require("config.barbar")
require("config.lualine")
require("config.toggleterm")
require("config.project")
require("config.impatient")
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
-- you need to run `brew install gnu-sed` for  MacOs
require("config.zen-mode")
require("config.neoscroll")
require("config.todo-comments")
require("config.renamer")
require("config.symbol-outline")
-- no longer needed, gitsigns is now used
-- require("config.git-blame")
require("config.gitlinker")
require("config.session-manager")
--TODO not sure how surround works, it conflicts with hop.vim
require("config.surround")
require("config.trouble")
require("config.notify")
--TODO not sure why it's not working yet
require("config.ts-context")
require("config.registers")
require("config.cheatsheet")
require("config.nvimcheat")

-- not working yet...
require("config.navigator")

-- load this at the last
require("config.whichkey")
