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
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "terminal inside vim


call plug#end()


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-a> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <f1> :TagbarToggle<CR>
"colorscheme gruvbox-material
"themes

colorscheme twilight256

"color tomorrow-night

set termguicolors
set background=light

"enable lightline support 
let g:falcon_airline = 1
let g:airline_theme = 'falcon'

"shortcuts

"surround ysiw <( or { or ">
"CTRL + t 
"enable autocomplete with TAB key
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
