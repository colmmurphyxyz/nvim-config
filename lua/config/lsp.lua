-- Ensure Mason and Mason-LSPConfig are setup
require("mason").setup()
require("mason-lspconfig").setup()

-- LSP Config for clangd
local lspconfig = require("lspconfig")

local function is_c_compiler_available()
  return vim.fn.executable("gcc") == 1 or vim.fn.executable("clang") == 1
end

-- only load clangd if C compiler in $PATH
if is_c_compiler_available() then
  lspconfig.clangd.setup {
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git")
  }
end

