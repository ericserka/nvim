-- Vim / lazy.nvim config
require('settings')
require('remaps')
require('lazy-config')

-- Plugin configs
require('plugins.theme')
require('plugins.lsp-config')
require('plugins.nvim-tree-config')
require('plugins.treesitter-config')
require('plugins.telescope-config')
require('plugins.spectre-config')
require('plugins.fugitive-config')
require('plugins.toggleterm-config')
require('plugins.markdown-preview-config')
require('plugins._other-plugin-requires')
require('plugins.gitsigns-config')
require('plugins.lualine-config')
