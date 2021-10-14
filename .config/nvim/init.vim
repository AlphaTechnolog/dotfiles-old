call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'kaicataldo/material.vim'
Plug 'psliwka/vim-smoothie'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'romgrk/doom-one.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'wadackel/vim-dogrun'
" Statusline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rafalbromirski/vim-aurora'
Plug 'ayu-theme/ayu-vim', { 'as': 'ayu' }
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'arcticicestudio/nord-vim', { 'as': 'nord' }
Plug 'neoclide/coc.nvim'
Plug 'diepm/vim-rest-console'
Plug 'ntk148v/vim-horizon'
" Plug 'Brettm12345/moonlight.vim'
Plug 'shaunsingh/moonlight.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'mhinz/vim-startify'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'numtostr/FTerm.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

autocmd Filetype python setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4

inoremap jk <esc>
inoremap kj <esc>
inoremap jj <esc>
inoremap kk <esc>

set number

if has('termguicolors')
  set termguicolors
endif

let g:material_theme_style = 'ocean'

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif

set background=dark

let g:gruvbox_contrast_dark = 'hard'
" let g:airline_theme = 'onedark'

" let g:lightline = {}
" let g:lightline.colorscheme = 'palenight'
" let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" } " powerline fonts
" Jlet g:lightline.subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" } " powerline fonts

let ayucolor='mirage'

" colorscheme onedark

" let g:airline_powerline_fonts=1


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap q :wq! <cr>
nnoremap <c-s> :w! <cr>
nnoremap <c-q> :wq! <cr>

set mouse=a
set clipboard=unnamedplus

nnoremap <c-n> :NvimTreeToggle <cr>

nnoremap <c-p> :Files <cr>
nnoremap <c-t> :Buffers <cr>

nnoremap <c-p> :Telescope find_files<cr>
nnoremap <c-t> :Telescope buffers<cr>

lua require'colorizer'.setup()

set noshowmode
set nowrap

nnoremap <tab> :bn! <cr>
nnoremap <s-tab> :bp! <cr>
nnoremap <c-b> :bd! <cr>

" Some plugins configs
source $HOME/.config/nvim/coc.vim
" luafile $HOME/.config/nvim/moonlight.lua
luafile $HOME/.config/nvim/tokyonight.lua
source $HOME/.config/nvim/startify.vim
luafile $HOME/.config/nvim/lua_tree.lua
luafile $HOME/.config/nvim/lualine.lua
luafile $HOME/.config/nvim/bufferline.lua
source $HOME/.config/nvim/markdown_preview.vim

" Toggle terminal
nnoremap <silent> <c-m-t> :lua require('FTerm').toggle() <cr>
