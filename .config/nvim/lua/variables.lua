vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
vim.o.number = true
vim.o.wrap = false
vim.o.clipboard = 'unnamedplus'
vim.o.showmode = false
vim.o.mouse = 'a'

vim.cmd [[ autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab ]]
vim.cmd [[ autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab ]]
vim.cmd [[ autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab ]]
vim.cmd [[ autocmd FileType php setlocal tabstop=4 shiftwidth=4 expandtab ]]
vim.cmd [[ autocmd FileType lua setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType javascriptreact setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType typescriptreact setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType css setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType vue setlocal tabstop=2 shiftwidth=2 expandtab ]]
vim.cmd [[ autocmd FileType json setlocal tabstop=2 shiftwidth=2 expandtab ]]

vim.cmd [[ set shell=/bin/bash ]]
