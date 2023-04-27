return {
  -- My plugins here
  'windwp/nvim-autopairs', -- Autopairs, integrates with both cmp and treesitter
  'numToStr/Comment.nvim', -- Easily comment stuff
  'kyazdani42/nvim-web-devicons',
  'kyazdani42/nvim-tree.lua',
  -- 'akinsho/bufferline.nvim',
  'nvim-lualine/lualine.nvim',
  'akinsho/toggleterm.nvim',
  'ahmedkhalf/project.nvim',
  -- 'lukas-reineke/indent-blankline.nvim',
  'goolord/alpha-nvim',
  'antoinemadec/FixCursorHold.nvim', -- This is needed to fix lsp doc highlight
  'folke/which-key.nvim',
  'folke/todo-comments.nvim',
  'ThePrimeagen/vim-be-good',

  -- Lua Development
  'nvim-lua/plenary.nvim', -- Useful lua functions used ny lots of plugins
  'nvim-lua/popup.nvim',
  'christianchiarulli/lua-dev.nvim',
  -- 'folke/lua-dev.nvim',

  -- Utility - UI
  -- 'rcarriga/nvim-notify',
  'stevearc/dressing.nvim',
  'ghillb/cybu.nvim',
  'moll/vim-bbye',
  'lewis6991/impatient.nvim',
  'lalitmee/browse.nvim',
  -- Packer
  {
    'folke/noice.nvim',
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module='...'` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },

  -- Debugging
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  {
    'mxsdev/nvim-dap-vscode-js',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
  },
  {
    'microsoft/vscode-js-debug',
    lazy = true,
    build = 'npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out'
  },
  'mfussenegger/nvim-dap-python',
  'ldelossa/nvim-dap-projects',
  -- 'theHamsta/nvim-dap-virtual-text',
  -- 'Pocco81/DAPInstall.nvim',

  -- cmp plugins
  'hrsh7th/nvim-cmp',         -- The completion plugin
  'hrsh7th/cmp-buffer',       -- buffer completions
  'hrsh7th/cmp-path',         -- path completions
  'hrsh7th/cmp-cmdline',      -- cmdline completions
  'saadparwaiz1/cmp_luasnip', -- snippet completions
  'hrsh7th/cmp-nvim-lsp',

  -- snippets
  'L3MON4D3/LuaSnip',             --snippet engine
  'rafamadriz/friendly-snippets', -- a bunch of snippets to use

  -- LSP
  'neovim/nvim-lspconfig',           -- enable LSP
  'williamboman/nvim-lsp-installer', -- simple to use language server installer
  'tamago324/nlsp-settings.nvim',    -- language server settings defined in json for
  'jose-elias-alvarez/null-ls.nvim', -- for formatters and linters
  'ray-x/lsp_signature.nvim',
  'RRethy/vim-illuminate',
  'j-hui/fidget.nvim',
  'lvimuser/lsp-inlayhints.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  -- 'https://git.sr.ht/~whynothugo/lsp_lines.nvim', --
  'simrat39/symbols-outline.nvim',
  {
    'SmiteshP/nvim-navic',
    dependencies = {
      'neovim/nvim-lspconfig',
    },
  },

  'folke/trouble.nvim',

  -- Telescope
  'nvim-telescope/telescope.nvim',
  'tom-anders/telescope-vim-bookmarks.nvim',
  'nvim-telescope/telescope-media-files.nvim',
  'nvim-telescope/telescope-ui-select.nvim',
  'nvim-telescope/telescope-file-browser.nvim',

  -- Marks
  'christianchiarulli/harpoon',
  'MattesGroeger/vim-bookmarks',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'windwp/nvim-ts-autotag',
  'romgrk/nvim-treesitter-context',

  -- Code Runner
  'is0n/jaq-nvim',
  {
    '0x100101/lab.nvim',
    build = 'cd js && npm ci',
  },

  -- Motion
  'phaazon/hop.nvim',
  -- 'jinh0/eyeliner.nvim',

  -- Git
  'lewis6991/gitsigns.nvim',
  --[[ 'github/copilot.vim', ]]
  -- 'Exafunction/codeium.vim',
  -- { 'codota/tabnine-nvim', build = 'pwsh.exe -file .\\dl_binaries.ps1' },

}

