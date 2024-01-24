"""Authored by andreleblanc11
"""SSH github profile: git@github.com:andreleblanc11
"""
"""[[init.vim]]
"""
""" Autumn 2022

""" Begin nvim plug in add
lua require('init')

""" Text editing
set fileencoding=utf-8
set fileformat=unix
set smartindent		
set foldenable
set foldmethod=indent
set foldlevel=100	
set number		"Toggle line numbers
set cursorline		"Highlight cursorline
set guifont
filetype plugin on
filetype on


""" Enable lua plugins
lua << EOF
require('nvim-treesitter-config')
require('nvim-tree-config')
require('pretty-fold-config')
require('icons-config')
require('tab-config')
require('status-config')
require('cursor-config')
require('nvim-numbertoggle')
require('pywal')
EOF

""" Colors, fonts and themes
colorscheme pywal
set guifont=Hurmit\ Nerd-Fonts\ Monospace\ 12
"""set background=dark

syntax on
