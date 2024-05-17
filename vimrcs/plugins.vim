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
Plug 'gruvbox-community/gruvbox'

" Basic
" Plug 'scrooloose/nerdtree'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'qpkorr/vim-bufkill'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'google/vim-searchindex'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

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
Plug 'hashivim/vim-terraform'

" HTML
Plug 'gregsexton/matchtag'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

""""""""""""""""""""""
" => Configs
""""""""""""""""""""""
let g:fern#renderer = "nerdfont"
let g:fern#default_exclude = '__pycache__$\|^\.git$\|\.pytest_cache$\|\.mypy_cache$\|\.venv$\|node_modules$\|.\.pyc$\|.\.db$\|.\.sqlite$\|.\.egg-info$'

augroup FernGroup
  autocmd!
  autocmd FileType fern setlocal nonumber
augroup END

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

" Airline
if has('gui_running') || has('nvim')
    let g:airline_theme='gruvbox'
else
    let g:airline_theme='dracula'
endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" Doesn't show spelling language
let g:airline_detect_spelllang=0
" Enable powerline fonts
let g:airline_powerline_fonts = 1
" Vim-airline appears even with only one window open
set laststatus=2
" ALE on statusline
let g:airline#extensions#ale#enabled = 1

" to truncate all path sections but the last one, e.g. a branch
" 'foo/bar/baz' becomes 'f/b/baz', use
let g:airline#extensions#branch#format = 2
" Shortfrm for modes
let g:airline_mode_map = {
  \ '__'     : '-',
  \ 'c'      : 'C',
  \ 'i'      : 'I',
  \ 'ic'     : 'I',
  \ 'ix'     : 'I',
  \ 'n'      : 'N',
  \ 'multi'  : 'M',
  \ 'ni'     : 'N',
  \ 'no'     : 'N',
  \ 'R'      : 'R',
  \ 'Rv'     : 'R',
  \ 's'      : 'S',
  \ 'S'      : 'S',
  \ ''     : 'S',
  \ 't'      : 'T',
  \ 'v'      : 'V',
  \ 'V'      : 'V',
  \ ''     : 'V',
  \ }

" JS
let g:jsx_ext_required = 0  " Allow JSX in normal JS files

" CTRL-P
let g:ctrlp_working_path_mode = 'ra'
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

" Neoformat - Code formatters
let g:neoformat_enabled_python = ['black', 'isort']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_javascriptreact = ['prettier']
let g:neoformat_enabled_yaml = ['prettier']

let g:neoformat_run_all_formatters = 1
