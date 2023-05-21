require("brendan.remap")
require("brendan.packer")
require("brendan.set") 

vim.g.ale_linters = {
    javascript = {'eslint'},
    ['javascript.jsx'] = {'eslint'},
    typescript = {'eslint'},
    ['typescript.tsx'] = {'eslint'},
}
vim.g.ale_fixers = {
    javascript = {'eslint'},
    ['javascript.jsx'] = {'eslint'},
    typescript = {'eslint'},
    ['typescript.tsx'] = {'eslint'},
}

--vim.g.ale_fix_on_save = 1
--vim.cmd('autocmd! BufWritePre *.js,*.jsx,*.ts,*.tsx undojoin | AleFix')

