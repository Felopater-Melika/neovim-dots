-- Use a protected call so we don't error out on first use
--
local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})
vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use("wbthomason/packer.nvim") -- Package manager
  use "Mofiqul/dracula.nvim" -- Theme
  use("goolord/alpha-nvim") -- Dashboard
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  }) -- Statusline
  use("akinsho/nvim-bufferline.lua") -- Buffer line for tabs
  use("nvim-telescope/telescope.nvim") -- Fuzzy finder
  use("nvim-telescope/telescope-file-browser.nvim") -- File browser
  use("rmagatti/auto-session") -- Automatic session manager
  use("nvim-lua/plenary.nvim") -- Common utils
  use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
  use("lewis6991/gitsigns.nvim") -- Shows git changes
  use("dinhhuy258/git.nvim") -- Git blame and browser
  use({
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icons
    },
    tag = "nightly", -- optional, updated every week. (see issue #1193)
  }) -- File trelocal status, null_ls = pcall(require, "null-ls")
  use("folke/which-key.nvim") -- Helps with key bindings
  use("akinsho/toggleterm.nvim") -- Terminal
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }) -- Highlighting
  use("p00f/nvim-ts-rainbow") -- Rainbow pairs
  use("windwp/nvim-autopairs") -- Autopair
  use("windwp/nvim-ts-autotag") -- Autotag
  use("lukas-reineke/indent-blankline.nvim") -- Indentation lines
  use("numToStr/Comment.nvim") -- Easy commenting
  use("JoosepAlviste/nvim-ts-context-commentstring") -- Adds context for comments
  use("abecodes/tabout.nvim") -- Tab to exit pairs
  use 'fgheng/winbar.nvim' -- Window bar
  -- use 'rcarriga/nvim-notify' -- Notifications
  use("onsails/lspkind-nvim") -- VScode-like pictograms
  use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
  use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
  use("hrsh7th/cmp-path") -- Path completions
  use("hrsh7th/cmp-cmdline") -- Cmdline completions
  use("zbirenbaum/copilot-cmp") -- Copilot CMP
  use 'hrsh7th/nvim-cmp' -- Completion
  use {
    "zbirenbaum/copilot.lua",
    after = 'lualine.nvim', --whichever statusline plugin you use here
    config = function()
      vim.defer_fn(function() require("copilot").setup() end, 100)
    end,
  } -- Copilot
  -- use "github/copilot.vim" -- Copilot
  use("max397574/cmp-greek") -- Greek letters
  use("hrsh7th/cmp-emoji") -- Emojis
  use("hrsh7th/cmp-nvim-lsp-signature-help") -- Signatures
  use("David-Kunz/cmp-npm") -- NPM completetions
  use("saadparwaiz1/cmp_luasnip") -- snippet completions
  use 'L3MON4D3/LuaSnip' -- Snippet engine
  use("kdheepak/cmp-latex-symbols") -- Latex support
  use("hrsh7th/cmp-nvim-lua") -- Lua dev
  use("hrsh7th/cmp-nvim-lsp-document-symbol") -- Symbols
  use("KadoBOT/cmp-plugins") -- Plugins completetions
  use({ "tzachar/cmp-tabnine", after = "nvim-cmp", run = "powershell ./install.ps1" }) -- Tabnine
  use("williamboman/mason.nvim") -- LSP Manager
  use("glepnir/lspsaga.nvim") -- LSP UI
  use("williamboman/mason-lspconfig.nvim") -- Config for Mason
  use 'lvimuser/lsp-inlayhints.nvim' -- LSP inlay hints
  use "ray-x/lsp_signature.nvim" -- LSP signature help
  use 'SmiteshP/nvim-navic' -- Symbols
  use 'neovim/nvim-lspconfig' -- LSP
  use("rafamadriz/friendly-snippets") -- Snippets to use
  use("folke/twilight.nvim") -- Dims inactive portions for Zen-mode
  use("folke/zen-mode.nvim") -- Zen
  use("andweeb/presence.nvim") -- Discord presence
  use 'simrat39/symbols-outline.nvim' -- Symbols outline
  use 'pwntester/octo.nvim' -- Github integration
  use "folke/todo-comments.nvim" -- todo comments
  use("stevearc/dressing.nvim") -- Dressing
  use("mfussenegger/nvim-dap") -- Debugger
  use("rcarriga/nvim-dap-ui") -- DAP UI
  use("theHamsta/nvim-dap-virtual-text") -- Virtual text support
  use("Pocco81/dap-buddy.nvim") -- Debugger manager
  use("nvim-telescope/telescope-dap.nvim") -- Dap telescope support
  use 'karb94/neoscroll.nvim' -- Smooth scrolling
  use("kdheepak/lazygit.nvim") -- Lazygit
  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  }) -- Markdown preview
  use 'nacro90/numb.nvim' -- Peek line
  use("ahmedkhalf/project.nvim") -- Project manager
  use("lalitmee/browse.nvim") -- Browser
  use 'nvim-orgmode/orgmode' -- Orgmode
  use 'akinsho/org-bullets.nvim' -- Orgmode bullets
  use {
    'lukas-reineke/headlines.nvim',
    config = function()
      require('headlines').setup()
    end,
  }
  use 'mattkubej/jest.nvim' -- Jest support
  use 'jose-elias-alvarez/typescript.nvim' -- Typescript plugin
  -- use { 'michaelb/sniprun', run = 'bash ./install.sh' } -- Sniprun

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
