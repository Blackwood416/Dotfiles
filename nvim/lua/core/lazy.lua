local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- Start setup
lazy.setup({
  spec = {
    -- Colorscheme:
    -- The colorscheme should be available when starting Neovim.
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },

    -- Icons
    { 'nvim-tree/nvim-web-devicons', lazy = true },

    -- Dashboard (start screen)
    {
      'goolord/alpha-nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- Git labels
    {
      'lewis6991/gitsigns.nvim',
      lazy = true,
      dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
      },
      config = function()
        require('gitsigns').setup{}
      end
    },

    -- Mason.Nvim for LSP and DAP servers installstion management
    {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    lazy = true
    },

    -- Telescope and its extensions
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim', 'AckslD/nvim-neoclip.lua', {'kkharji/sqlite.lua', module = 'sqlite'}, 'debugloop/telescope-undo.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}, 'sudormrfbin/cheatsheet.nvim', 'nvim-telescope/telescope-dap.nvim' },
    },

    -- Statusline
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons'}, },

    -- Sidebar
    { 'sidebar-nvim/sidebar.nvim', dependencies = { 'sidebar-nvim/sections-dap' }, },

    -- DAP
    { 'mfussenegger/nvim-dap', dependencies = { 'rcarriga/nvim-dap-ui', 'theHamsta/nvim-dap-virtual-text', 'LiadOz/nvim-dap-repl-highlights'}, },

    -- Lintee
    { 'mfussenegger/nvim-lint' },

    -- Formatter
    { 'mhartington/formatter.nvim' },

    -- Jump tool
    { 'folke/flash.nvim' },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    -- Color utils
    { 'max397574/colortils.nvim', lazy = true },

    -- Indent line
    { 'lukas-reineke/indent-blankline.nvim' },

    -- Autopair
    {
      'windwp/nvim-autopairs',
      event = 'InsertEnter',
      config = function()
        require('nvim-autopairs').setup{}
      end
    },

    -- LSP
    { 'neovim/nvim-lspconfig' },

    -- LSP enhancement
    { 'nvimdev/lspsaga.nvim',
      event = 'LspAttach',
      config = function ()
        require('lspsaga').setup({})
      end
    },

    -- Neovim Lua plugin development helper
    { 'folke/neodev.nvim' },

    -- Global and Local configuration management
    { 'folke/neoconf.nvim' },

    -- List for showing diagnostic
    { 'folke/trouble.nvim' },

    -- Background transparent
    { 'xiyaowong/transparent.nvim' },

    -- Autocomplete
    {
      'hrsh7th/nvim-cmp',
      -- load cmp on InsertEnter
      event = 'InsertEnter',
      -- these dependencies will only be loaded when cmp loads
      -- dependencies are always lazy-loaded unless specified otherwise
      dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
      },
    },
  },
})
