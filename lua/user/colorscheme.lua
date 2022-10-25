vim.cmd [[
try
  let g:everforest_background = 'medium'
  let g:everforest_better_performance = 1
  let g:everforest_transparent_background = 1
  let g:everforest_diagnostic_virtual_text = "colored"
  let g:everforest_ui_contrast = 'high'
  colorscheme everforest
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
