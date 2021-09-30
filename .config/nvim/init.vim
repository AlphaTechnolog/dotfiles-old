call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'kaicataldo/material.vim'
Plug 'psliwka/vim-smoothie'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'romgrk/doom-one.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'wadackel/vim-dogrun'
" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rafalbromirski/vim-aurora'
Plug 'ayu-theme/ayu-vim', { 'as': 'ayu' }
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

colorscheme material

let ayucolor='mirage'

" colorscheme ayu

let g:airline_powerline_fonts=1

" let g:lightline = {}
" let g:lightline.colorscheme = 'dogrun' " dogrun as colorscheme
" let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" } " powerline fonts
" let g:lightline.subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" } " powerline fonts

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap q :wq! <cr>
nnoremap <c-s> :w! <cr>
nnoremap <c-q> :wq! <cr>

set mouse=a
set clipboard=unnamedplus

nnoremap <c-n> :NERDTreeFocus <cr>
nnoremap <C-m-n> :NERDTreeToggle <cr>

let NERDTreeQuitOnOpen = 1

nnoremap <c-p> :Files <cr>
nnoremap <c-t> :Buffers <cr>

lua require'colorizer'.setup()

set noshowmode
set nowrap
