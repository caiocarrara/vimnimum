"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

" Navigate through buffs
nmap <C-h> :bprevious<CR>
nmap <C-l> :bnext<CR>
nmap <C-j> :tabnext<CR>
nmap <C-k> :tabprevious<CR>

" Close buff
" map <F2> :lclose<CR>:BD!<CR>
map <F2> :bp <BAR> bd #<CR>

" Opening CtrlP in different modes
nmap <C-b> :CtrlPBuffer<CR>
nmap <C-m> :CtrlPMixed<CR>

" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" TagBar Toggle
nmap <F8> :TagbarToggle<CR>

" Moving lines and blocks
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Get Prettier (JS)
nnoremap gp :silent %!prettier --stdin --stdin-filepath % --trailing-comma all --single-quote<CR>
"
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Neoformat
map <C-i> :Neoformat<CR>

" Because cutlass, remap cut
nnoremap m d
xnoremap m d

nnoremap mm dd
nnoremap M D
