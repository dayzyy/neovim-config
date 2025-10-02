return {
    {
	"neovim/nvim-lspconfig",
	dependencies = { 'saghen/blink.cmp' },

	config = function()
	    local capabilities = require('blink.cmp').get_lsp_capabilities()

		local on_attach = function(_, bufnr)
			local opts = { buffer = bufnr, silent = true }

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		end

	    -- Configure the LSP servers for different languages
	    local lspconfig = require('lspconfig')
	    lspconfig.pyright.setup{capabilities = capabilities, on_attach=on_attach,}
	    lspconfig.ts_ls.setup{capabilities = capabilities, on_attach=on_attach,}
	    lspconfig.html.setup{
		capabilities = capabilities,
		filetypes = { "html", "javascriptreact"}, -- Ensure JSX is included
		on_attach=on_attach,
	    }
	    lspconfig.cssls.setup{
		capabilities = capabilities,
		filetypes = { "css", "javascriptreact"}, -- Ensure JSX is included
		on_attach=on_attach,
	    }
	    lspconfig.clangd.setup{
		capabilities = capabilities,
		filetypes = { "c", "cpp", "objc", "objcpp" },
		on_attach=on_attach,
	    }
	end,
    }
}
