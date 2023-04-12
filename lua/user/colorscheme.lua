-- GRUVBOX_MATERIAL CONFIG
-- vim.g.gruvbox_material_background = 'light'
-- vim.g.gruvbox_material_background = 'dark'
vim.g.gruvbox_material_foreground = 'grey'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_transparent_background = 0
vim.g.gruvbox_material_visual = 'grey background'
vim.g.gruvbox_material_background = 'soft'
vim.g.gruvbox_material_current_word = 'grey background'
vim.g.gruvbox_material_menu_selection_background = 'aqua'
vim.g.gruvbox_material_ui_contrast = 'high'
vim.g.gruvbox_material_diagnostic_text_highlight = 0
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_diagnostic_line_highlight = 0 -- not working

-- TOKYONIGHT CONFIG
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true

-- vim.cmd("hi IlluminatedWordRead ctermbg=7 guibg=#c5d1e0")
-- vim.cmd("hi IlluminatedWord ctermbg=7 guibg=#c5d1e0")
-- vim.cmd("hi IlluminatedCurWord ctermbg=7 guibg=#c5d1e0")
-- vim.cmd("hi link IlluminatedWordRead Visual")


-- catppuccin CONFIG
local catppuccin_status_ok, catppuccin = pcall(require, "catppuccin")
if not catppuccin_status_ok then
  return
end
catppuccin.setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = false,
  show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  term_colors = false,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  no_italic = true, -- Force no italic
  no_bold = false, -- Force no bold
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {},
  custom_highlights = {},
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    notify = false,
    mini = false,
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})


-- GITHUB THEME CONFIG
local githubtheme_status_ok, githubtheme = pcall(require, "github-theme")
if not githubtheme_status_ok then
  return
end
githubtheme.setup({
  -- theme_style = "light_default",
  function_style = "italic",
  sidebars = { "qf", "vista_kind", "terminal", "packer" },

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = { hint = "orange", error = "#ff0000" },

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
      DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})

-- setup must be called before loading
-- local colorscheme = "edge"
-- local colorscheme = "gruvbox-material"
local colorscheme = "catppuccin"
-- local colorscheme = "github-theme"
-- local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end





require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
