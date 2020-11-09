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
Plug 'scrooloose/nerdtree'
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
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " enables gbrowse
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Syntax check
Plug 'dense-analysis/ale'

" Syntax highlight
Plug 'hail2u/vim-css3-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'rust-lang/rust.vim'

" HTML
Plug 'AndrewRadev/tagalong.vim'
Plug 'valloric/MatchTagAlways'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'

call plug#end()

""""""""""""""""""""""
" => Configs
""""""""""""""""""""""
" NerdTree
let g:NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '\.egg-info', '\.git$', '\.pytest_cache', '\.tox', 'node_modules', '\.tx', '\.mypy_cache']
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

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
" ALE on statusline
let g:airline#extensions#ale#enabled = 1

" JS
let g:jsx_ext_required = 0  " Allow JSX in normal JS files

" CTRL-P
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 20

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s --ignore .git --ignore "*vcr_cassettes*" -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
