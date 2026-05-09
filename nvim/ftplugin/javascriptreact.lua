vim.lsp.enable({'vtsls'})
vim.b.ale_linters = {'eslint'}
vim.b.ale_fixers = {'prettier', 'eslint'}
vim.b.ale_fix_on_save = 1
