-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use({ 'rose-pine/neovim', as = 'rose-pine' })

  --require('rose-pine').setup({
  --    --- @usage 'auto'|'main'|'moon'|'dawn'
  --    variant = 'auto',
  --    --- @usage 'main'|'moon'|'dawn'
  --    dark_variant = 'moon',
  --    bold_vert_split = false,
  --    dim_nc_background = false,
  --    disable_background = true,
  --    disable_float_background = false,
  --    disable_italics = true,

  --    --- @usage string hex value or named color from rosepinetheme.com/palette
  --    groups = {
  --  	  background = 'base',
  --  	  background_nc = '_experimental_nc',
  --  	  panel = 'surface',
  --  	  panel_nc = 'base',
  --  	  border = 'highlight_med',
  --  	  comment = 'muted',
  --  	  link = 'iris',
  --  	  punctuation = 'subtle',

  --  	  error = 'love',
  --  	  hint = 'iris',
  --  	  info = 'foam',
  --  	  warn = 'gold',

  --  	  headings = {
  --  		  h1 = 'iris',
  --  		  h2 = 'foam',
  --  		  h3 = 'rose',
  --  		  h4 = 'gold',
  --  		  h5 = 'pine',
  --  		  h6 = 'foam',
  --  	  }
  --  	  -- or set all headings at once
  --  	  -- headings = 'subtle'
  --    },

  --    -- Change specific vim highlight groups
  --    -- https://github.com/rose-pine/neovim/wiki/Recipes
  --    highlight_groups = {
  --  	  ColorColumn = { bg = 'rose' },

  --  	  -- Blend colours against the "base" background
  --  	  CursorLine = { bg = 'foam', blend = 10 },
  --  	  StatusLine = { fg = 'love', bg = 'love', blend = 10 },
  --    }
  --})

  --vim.cmd('colorscheme rose-pine')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')
  
  use('mbbill/undotree')
  
  use('tpope/vim-fugitive')
  
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

  use 'dense-analysis/ale'

  use 'preservim/nerdtree'

  use 'navarasu/onedark.nvim'
  require('onedark').load(require('onedark').setup  {
      -- Main options --
      style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false,  -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none'
      },

      -- Lualine options --
      lualine = {
          transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {}, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
          darker = true, -- darker colors for diagnostic
          undercurl = true,   -- use undercurl instead of underline for diagnostics
          background = true,    -- use background color for virtual text
      },
  })
end)

