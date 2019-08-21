call plug#begin(expand('~/.vimnimum/plugged/'))
""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""
" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'morhetz/gruvbox'

" Basic
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'qpkorr/vim-bufkill'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'gorodinskiy/vim-coloresque'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " enables gbrowse
Plug 'airblade/vim-gitgutter'

" Syntax check
Plug 'vim-syntastic/syntastic'

" Syntax highlight
Plug 'hail2u/vim-css3-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'rust-lang/rust.vim'

" Python
Plug 'Vimjas/vim-python-pep8-indent'
if !has('nvim')
    Plug 'ambv/black'
endif

" Django template syntax highlight
Plug 'django.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

""""""""""""""""""""""
" => Configs
""""""""""""""""""""""
" Airline
if has('gui_running') || has('nvim')
    let g:airline_theme='gruvbox'
else
    let g:airline_theme='dracula'
endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Enable powerline fonts
let g:airline_powerline_fonts = 1
" Vim-airline appears even with only one window open
set laststatus=2


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['flake8']
let g:syntastic_javascript_checkers = ['eslint']

" JS
let g:jsx_ext_required = 0  " Allow JSX in normal JS files

" CTRL-P
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 20

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s --path-to-ignore ~/.ignore -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
