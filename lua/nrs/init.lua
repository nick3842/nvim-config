vim.g.mapleader = " "

vim.cmd(
  [[autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]])

require("nrs.lazy_init")
require("nrs.settings")
require("nrs.keymaps")
