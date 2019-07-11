"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

" Navigate through buffs
nmap <C-h> :bprevious<CR>
nmap <C-l> :bnext<CR>

" Close buff
map <F2> :lclose<CR>:BD!<CR>

" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" TagBar Toggle
nmap <F8> :TagbarToggle<CR>
