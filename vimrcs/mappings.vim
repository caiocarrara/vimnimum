"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

" Navigate through buffs
" nmap <C-h> :bprevious<CR>
" nmap <C-l> :bnext<CR>
" nmap <C-j> :tabnext<CR>
" nmap <C-k> :tabprevious<CR>

nmap <leader>z :bp<CR>
nmap <leader>x :bn<CR>

" Close buff
map <F2> :bp <BAR> bd #<CR>

" Fern Toggle
" map <C-n> :Fern . -drawer -toggle -width=35<CR>
map <leader>n :Fern . -drawer -toggle -width=35<CR>
map <leader>f :Fern . -drawer -reveal=% -width=35<CR>
" map <C-f> :Fern . -drawer -reveal=% -width=35<CR>

" TagBar Toggle
nmap <F8> :TagbarToggle<CR>

" Moving lines and blocks
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Neoformat
map <leader>i :Neoformat<CR>

" Keep Y as Y
" After https://github.com/neovim/neovim/pull/13268
nnoremap Y Y
