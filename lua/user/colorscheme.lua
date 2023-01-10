-- local colorscheme = "tokyonight-night"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   return
-- end
vim.cmd [[
try
  let g:everforest_background = 'medium'
  let g:everforest_better_performance = 1
  let g:everforest_diagnostic_virtual_text = "colored"
  let g:everforest_ui_contrast = 'high'
  colorscheme everforest
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
