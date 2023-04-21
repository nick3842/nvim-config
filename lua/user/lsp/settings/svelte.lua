lspconfig = require "lspconfig"
util = require "lspconfig/util"

return {
  cmd = {"svelteserver", "--stdio" },
  filetypes = {"svelte"},
  root_dir = root_pattern("package.json", ".git")
}
