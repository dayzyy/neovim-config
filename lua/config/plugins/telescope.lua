return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
	{'nvim-lua/plenary.nvim'},
	{
	    'nvim-telescope/telescope-fzf-native.nvim',
	    build = 'make'
	}
    },
    config = function()
	local fns = require('telescope.builtin')
	vim.keymap.set("n", "<leader>ff", fns.find_files)
	vim.keymap.set("n", "<leader>fw", fns.live_grep)
    end
}
