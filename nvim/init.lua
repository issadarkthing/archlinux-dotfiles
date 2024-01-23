
-- package manager
vim.cmd[[packadd packer.nvim]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- lsp installer
	use {
		"williamboman/mason-lspconfig.nvim",
		requires = {"neovim/nvim-lspconfig", "williamboman/mason.nvim"},
		config = function() 
			require("plugin_config.mason")
		end
	}

	-- theme
    use { 'Mofiqul/vscode.nvim' }

	-- auto completion
	use {
		'ms-jpq/coq_nvim',
		branch = 'coq',
	}


    -- surround stuff based on filetype
    use 'tpope/vim-surround'

    -- comment based on ft
    use 'tpope/vim-commentary'

    -- finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('plugin_config.telescope')
        end
    }

    -- add helper commands such as :Delete
    use 'tpope/vim-eunuch'

    -- git client
    use { 
	    'kdheepak/lazygit.nvim',
	    config = function() 
		    require('plugin_config.lazygit')
	    end
    }

    -- auto pair
    use { 
        'windwp/nvim-autopairs',
        config = function() require("nvim-autopairs").setup() end
    }

    -- typescript/javascript formatter
    use { 
        'issadarkthing/vim-prettier', 
        opt = true, ft = {'typescript', 'typescriptreact'},
        run = {'yarn install'},
    }

    -- html tag completion
    use 'tpope/vim-ragtag'

    -- note taking
    use 'vimwiki/vimwiki'

    -- better typescript lsp
    use {
        "pmizio/typescript-tools.nvim",
        requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    }

    -- typescript checker
    use { "issadarkthing/tsc.nvim" }

    -- status line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)

require('tsc').setup{}

require('vscode').setup{
    transparent = true,
    italic_comments = true
}

local vscode_theme = require('lualine.themes.vscode')

vscode_theme.normal.b.bg = "#2f2f2f"
vscode_theme.normal.c.bg = "#2f2f2f"

vscode_theme.inactive.b.bg = "#2f2f2f"
vscode_theme.inactive.c.bg = "#2f2f2f"

require('lualine').setup{
    options = {
        theme = vscode_theme
    }
}

require('vscode').load()

vim.g.mapleader = ","

vim.cmd[[set number]]
vim.cmd[[set nowrap]]
vim.cmd[[set nohlsearch]]
vim.cmd[[autocmd InsertEnter * norm zz]]
vim.cmd[[set nosmarttab]]
vim.cmd[[set expandtab]]
vim.cmd[[set tabstop=4]]
vim.cmd[[set shiftwidth=4]]
vim.cmd[[set textwidth=80]]
vim.cmd[[set colorcolumn=80]]
vim.cmd[[
    let g:prettier#autoformat = 1
    let g:prettier#autoformat_require_pragma = 0
]]

-- mappings
vim.keymap.set("i", "<c-e>", "<esc>A")
vim.keymap.set("i", "<c-a>", "<esc>I")
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', 'm', ':w<cr>')
vim.keymap.set('n', '<backspace>', '<c-w>w')
vim.keymap.set('n', '<c-n>', ':Ex<cr>')
vim.keymap.set('n', '<c-o>', '<c-o>zz')
vim.keymap.set('n', '<c-i>', '<c-i>zz')
vim.keymap.set("n", "<c-w>v", "<c-w>v<c-w>l")
vim.keymap.set("n", "<c-w>s", "<c-w>s<c-w>j")

vim.opt.termguicolors = true
