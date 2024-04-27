return {
  'ellisonleao/gruvbox.nvim',

  {
    'projekt0n/github-nvim-theme',
    priority = 1000,
    lazy = false,
    config = function()
      require('github-theme').setup()
      vim.cmd.colorscheme('github_dark')
    end
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
      styles = {
        italic = false
      }
    }
  }
}
