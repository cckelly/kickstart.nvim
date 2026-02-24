-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command in the config to whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  opts = {
    flavour = 'mocha',
    no_italic = true,
    transparent_background = true,
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.cmd.colorscheme 'catppuccin'
  end,
}
