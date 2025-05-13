require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "cpp", "cmake", "make" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}

