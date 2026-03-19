require('lazy').setup({
  'NMAC427/guess-indent.nvim',
  require 'plugins.gitsign',
  require 'plugins.flutter',
  require 'plugins.whichkey',
  require 'plugins.telescope',
  require 'plugins.image',
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  require 'plugins.lspconfig',
  require 'plugins.autoformat',
  require 'plugins.autocomplete',
  require 'plugins.theme',
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.neotree',
  require 'plugins.terminal',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function()
      require('competitest').setup()
    end,
  },
  require 'plugins.discord',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
