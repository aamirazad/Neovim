--[=====[
  _____     _                _   _ _       _     _   
 |_   _|__ | | _____  ___   | \ | (_) __ _| |__ | |_ 
   | |/ _ \| |/ / _ \/ _ \  |  \| | |/ _` | '_ \| __|
   | | (_) |   <  __/ (_) | | |\  | | (_| | | | | |_ 
   |_|\___/|_|\_\___|\___/  |_| \_|_|\__, |_| |_|\__|
                                     |___/           
--]=====]
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"
 require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  styles = {
      sidebars = "dark", -- style for sidebars, see below
  }
  })

  vim.cmd("colorscheme tokyonight-moon")
--[===[
  _                _     _            
 | |   _   _  __ _| |   (_)_ __   ___ 
 | |  | | | |/ _` | |   | | '_ \ / _ \
 | |__| |_| | (_| | |___| | | | |  __/
 |_____\__,_|\__,_|_____|_|_| |_|\___|
                                      
 --]===]
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  [inbar = {},
  inactive_winbar = {},
  extensions = {}
}
-- examples for your init.lua
--[===[
  _   _       _         _____              
 | \ | |_   _(_)_ __ __|_   _| __ ___  ___ 
 |  \| \ \ / / | '_ ` _ \| || '__/ _ \/ _ \
 | |\  |\ V /| | | | | | | || | |  __/  __/
 |_| \_| \_/ |_|_| |_| |_|_||_|  \___|\___|
                                           
 --]===]

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

