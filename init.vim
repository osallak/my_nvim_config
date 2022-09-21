" **************************************************************************** "
"                                                                              "
"                                                 ##    Oussama Sallak   ##    "
"    init.vim                                           :+:      :+:    :+:    "
"                                                 ##   O             O   ##    "
"    By: osallak <osallak@student.42.fr>          ##                     ##    "
"                                                  ##       ____        ##     "
"    Created: 2022/09/18 13:28:51 by osallak        ##                 ##      "
"    Updated: 2022/09/20 23:10:16 by A                #################        "
"                                                                              "
" **************************************************************************** "

set number
set relativenumber

set mouse=a


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'"themes
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'"theme
Plug 'sainnhe/gruvbox-material'
Plug '/tpope/vim-repeat'
Plug 'tpope/vim-surround' "surround word by ( or { or
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "like find command but much better
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "multi selection
Plug 'bluz71/vim-nightfly-guicolors' "colorscheme
Plug 'tpope/vim-commentary' " comment a line/paragraph usage : gcc to comment a line, gc...
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tpope/vim-fugitive' "use git inside vim, usage: :Git followed by git command
Plug 'ervandew/supertab'
Plug '42Paris/42header'
Plug 'Raimondi/delimitMate'
call plug#end()


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-a> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <F10> :TagbarToggle<CR>
"themes

"colorscheme gruvbox-material
"colorscheme twilight256
colorscheme nightfly 
"color tomorrow-night
"colorscheme hybrid_reverse

set termguicolors
set background=dark

"enable lightline support 
let g:falcon_airline = 1
let g:airline_theme = 'falcon'

"shortcuts
"surround ysiw <( or { or ">
"CTRL + t 
"enable autocomplete with TAB key

:map <C-w> :wq <CR> " save and quit usin CTRL + w key
:map <C-q> :q <CR> " quit usin CTRL + q key
:map <F3> :q! <CR> " force quit usin F3 key



inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

nmap <F8> :TagbarToggle<CR>

let g:user42 = 'osallak'
let g:mail42 = 'osallak@student.42.fr'

