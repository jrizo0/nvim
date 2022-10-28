-- vim.cmd [[
-- try
--   colorscheme darkplus
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]

-- NEON CONFIG
vim.g.neon_style = 'dark'

-- EDGE CONFIG
vim.g.edge_style = 'aura'
vim.g.edge_diagnostic_line_highlight = 0
vim.g.edge_diagnostic_text_highlight = 1
vim.g.edge_diagnostic_virtual_text = 'colored'

-- GRUVBOX_MATERIAL CONFIG
vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_transparent_background = 0
vim.g.gruvbox_material_visual = 'grey background'
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_current_word = 'grey background'
vim.g.gruvbox_material_menu_selection_background = 'aqua'
vim.g.gruvbox_material_ui_contrast = 'high'
vim.g.gruvbox_material_diagnostic_text_highlight = 0
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_diagnostic_line_highlight = 0 -- not working

-- GRUVBOX CONFIG
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

-- local colorscheme = "edge"
local colorscheme = "gruvbox-material"
-- local colorscheme = "gruvbox"

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
