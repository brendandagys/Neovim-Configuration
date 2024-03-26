--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.fillchars:append { diff = "/" }

vim.api.nvim_set_option("clipboard", "unnamed")

-- No prefix after \n on comment
vim.cmd([[autocmd BufEnter * set formatoptions-=r]])
-- Indentation-related
vim.cmd([[autocmd BufEnter * set formatoptions-=c]])
vim.cmd([[autocmd BufEnter * set formatoptions-=o]])
