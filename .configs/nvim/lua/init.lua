-- Authored by andreleblanc11 
-- SSH github profile: git@github.com:andreleblanc11
--
-- [[init.lua]]
--
-- Autumn 2022

-- Plugin list
return require('packer').startup(function()
	
	-- Local Package Manager
	use 'wbthomason/packer.nvim'
	
	-- Syntax Highlighter
	use 'nvim-treesitter/nvim-treesitter'
	
	-- Tree viewer
	use({
		'kyazdani42/nvim-tree.lua', 
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
		tag = 'nightly'
	})

	-- Status line
	use 'nvim-lualine/lualine.nvim'

	-- Fold code structures
	use 'anuvyklack/fold-preview.nvim'
	use 'anuvyklack/keymap-amend.nvim'

	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'

	-- Color schemes, icons and fonts
	use 'Mofiqul/dracula.nvim'
	use 'folke/tokyonight.nvim'

	-- Tabs and cursors
	use {'akinsho/bufferline.nvim', requires='nvim-tree/nvim-web-devicons'}
	use 'gen740/SmoothCursor.nvim'

	-- Line number toggle
	use 'sitiom/nvim-numbertoggle'

end)	
