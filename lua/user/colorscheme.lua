-- everforest config -----------------------------------
-- vim.cmd [[
-- try
--   let g:everforest_background = 'medium'
--   let g:everforest_better_performance = 1
--   let g:everforest_diagnostic_virtual_text = "colored"
--   let g:everforest_ui_contrast = 'high'
--   let g:everforest_enable_italic = 1
--   let g:everforest_diagnostic_line_highlight = 1
--   colorscheme everforest
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
-- everforest config -----------------------------------

-- kanagawa config -----------------------------------
-- require('kanagawa').setup({
--     undercurl = true,           -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true, bold = false },
--     statementStyle = { bold = true },
--     typeStyle = {},
--     variablebuiltinStyle = { italic = true},
--     specialReturn = true,       -- special highlight for the return keyword
--     specialException = true,    -- special highlight for exception handling keywords
--     transparent = false,        -- do not set background color
--     dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
--     globalStatus = true,       -- adjust window separators highlight for laststatus=3
--     terminalColors = true,      -- define vim.g.terminal_color_{0,17}
--     colors = {},
--     overrides = {
--       CursorLineNr = { bold = false },
--       Todo = { bg = "#FFA066", }
--     },
--     theme = "default"           -- Load "default" theme or the experimental "light" theme
-- })
-- Default options:
require('kanagawa').setup({
  compile = false,             -- enable compiling the colorscheme
  undercurl = true,            -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true},
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = false,         -- do not set background color
  dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
  terminalColors = true,       -- define vim.g.terminal_color_{0,17}
  colors = {                   -- add/modify theme and palette colors
    palette = {},
    theme = {
      all = { ui = {
        bg_gutter = "none",
        bg_visual  = "#43242B",
      } },
      wave = {},
      lotus = {},
      dragon = {},
    },
  },
  overrides = function(colors) -- add/modify highlights
    return {
      CursorLineNr = { bold = false },
      Todo = { bg = "#FFA066", }
    }
  end,
  theme = "wave",              -- Load "wave" theme when 'background' option is not set
  background = {               -- map the value of 'background' option to a theme
    dark = "wave",           -- try "dragon" !
    light = "lotus"
  },
})
vim.cmd('colorscheme kanagawa')
