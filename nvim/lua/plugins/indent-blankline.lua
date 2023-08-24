local indent_blankline = require('indent_blankline')

indent_blankline.setup {
  char = "▏",
  use_treesitter = true,
  show_first_indent_level = true,
  filetype_exclude = {
    'lspinfo',
    'packer',
    'checkhealth',
    'help',
    'man',
    'dashboard',
    'git',
    'markdown',
    'text',
    'terminal',
    'NvimTree',
  },
  buftype_exclude = {
    'terminal',
    'nofile',
    'quickfix',
    'prompt',
  },
}
