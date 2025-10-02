return {
    {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
	    require('mini.basics').setup({})
	    require('mini.pairs').setup({})
	    require('mini.cursorword').setup({})
	    require('mini.tabline').setup({})
		require('mini.diff').setup {
			view = { style = 'sign' }
		}

		vim.keymap.set("n", "<space>go", ":lua MiniDiff.toggle_overlay()<cr>")
	end
    }
}
