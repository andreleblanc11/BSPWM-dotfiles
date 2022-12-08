require('nvim-treesitter.configs').setup {
	ensure_installed = {
		'python',
		'lua'
	},
	highlight = {
		enable = True
	},
}
