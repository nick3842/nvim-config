-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- file wide find and replace if you type replacement
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>v", "<cmd>vsp<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>noh<cr>")
vim.keymap.set("n", "<leader>p", "$p")

vim.keymap.set("n", "<C-h>", "<CMD>NavigatorLeft<CR>" )
vim.keymap.set("n", "<C-j>", "<CMD>NavigatorDown<CR>" )
vim.keymap.set("n", "<C-k>", "<CMD>NavigatorUp<CR>"   )
vim.keymap.set("n", "<C-l>", "<CMD>NavigatorRight<CR>")


-- lvim.keys.normal_mode["<C-h>"] =
-- lvim.keys.normal_mode["<C-j>"] =
-- lvim.keys.normal_mode["<C-k>"] =
-- lvim.keys.normal_mode["<C-l>"] =
-- "<C-w>h"
-- "<C-w>j"
-- "<C-w>k"
-- "<C-w>l"
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
