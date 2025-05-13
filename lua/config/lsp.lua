-- Ensure Mason and Mason-LSPConfig are setup
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "clangd" },
}

-- LSP Config for clangd
local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git")
}

