local fn = vim.fn

-- Automatically install packer

local package_root = "/tmp/nvim/site/pack"
local install_path = package_root .. "/packer/start/packer.nvim"
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window

-- Install your plugins here
return packer.startup({
  function(use)
    -- Plugins here
    use("wbthomason/packer.nvim") -- Have packer manage itself
    use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
    use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
    use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
    use("numToStr/Comment.nvim") -- Easily comment stuff
    use({
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons", -- optional, for file icon
      },
    })

    use("romgrk/barbar.nvim")
    -- use "akinsho/bufferline.nvim"
    use("nvim-lualine/lualine.nvim")
    use("moll/vim-bbye")
    use("akinsho/toggleterm.nvim")
    use("ahmedkhalf/project.nvim")
    use("lewis6991/impatient.nvim")
    use("lukas-reineke/indent-blankline.nvim")
    use("goolord/alpha-nvim")
    --   use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
    use("folke/which-key.nvim")
    use("unblevable/quick-scope")
    use("phaazon/hop.nvim")
    use("andymass/vim-matchup")
    use("nacro90/numb.nvim")
    use("monaqa/dial.nvim")
    use("norcalli/nvim-colorizer.lua")
    use("windwp/nvim-spectre")
    use("folke/zen-mode.nvim")
    use("karb94/neoscroll.nvim")
    use("folke/todo-comments.nvim")
    use("kevinhwang91/nvim-bqf")
    use("ThePrimeagen/harpoon")
    use("MattesGroeger/vim-bookmarks")
    use("blackCauldron7/surround.nvim")
    use("Shatur/neovim-session-manager")
    use("rcarriga/nvim-notify")
    use("tversteeg/registers.nvim")
    use("metakirby5/codi.vim")
    use({
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
    })
    -- this is vim command cheatshett
    use("sudormrfbin/cheatsheet.nvim")
    -- this is general language cheatsheet
    use("RishabhRD/nvim-cheat.sh")

    -- tmux
    use("christoomey/vim-tmux-navigator")

    -- Colorschemes
    use("Mofiqul/vscode.nvim")

    -- cmp plugins
    use("hrsh7th/nvim-cmp") -- The completion plugin
    use("hrsh7th/cmp-buffer") -- buffer completions
    use("hrsh7th/cmp-path") -- path completions
    use("hrsh7th/cmp-cmdline") -- cmdline completions
    use("saadparwaiz1/cmp_luasnip") -- snippet completions
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-emoji")
    -- onsails/lspkind-nvim" was for tabnine
    -- use "onsails/lspkind-nvim"
    -- use {
    --   "tzachar/cmp-tabnine",
    --   after = "nvim-cmp",
    --   config = function()
    --     local tabnine = require "cmp_tabnine.config"
    --     tabnine:setup {
    --       max_lines = 1000;
    --       max_num_results = 20;
    --       sort = true;
    --       run_on_every_keystroke = true;
    --       snippet_placeholder = '..';
    --       ignored_file_types = { -- default is not to ignore
    --         -- uncomment to ignore in lua:
    --         -- lua = true
    --       };
    --     }
    --   end,

    --   run = "./install.sh",
    --   requires = "hrsh7th/nvim-cmp",
    -- }

    -- snippets
    use("L3MON4D3/LuaSnip") --snippet engine
    use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

    -- LSP
    use("neovim/nvim-lspconfig") -- enable LSP
    use("williamboman/nvim-lsp-installer") -- simple to use language server installer
    use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
    use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
    use("filipdutescu/renamer.nvim")
    use("simrat39/symbols-outline.nvim")
    use("ray-x/lsp_signature.nvim")
    use("b0o/SchemaStore.nvim")
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    })
    use("RishabhRD/popfix")
    -- no longer working, will come back and see if there any update
    -- on lsputils package for resovling the issue
    --use "RishabhRD/nvim-lsputils"
    -- this is replacing lsputils before the issue is resolved
    use("hood/popui.nvim")

    use("ray-x/guihua.lua")
    use({ "ray-x/navigator.lua", requires = { "ray-x/guihua.lua", run = "cd lua/fzy && make" } })

    -- Telescope
    use("nvim-telescope/telescope.nvim")
    use("tom-anders/telescope-vim-bookmarks.nvim")

    -- Treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    })
    use("p00f/nvim-ts-rainbow")
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use("windwp/nvim-ts-autotag")
    use("romgrk/nvim-treesitter-context")

    -- Git
    use("lewis6991/gitsigns.nvim")
    -- no longer needed, gitsign is now used
    -- use "f-person/git-blame.nvim"
    use("ruifm/gitlinker.nvim")
    -- need to run "brew install lazygit"
    use("tpope/vim-fugitive")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
  end,
  config = {
    package_root = package_root,
    compile_path = install_path .. "/plugin/packer_compiled.lua",
  },
})
