"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
set background=dark
try
    colorscheme onedark
catch
endtry

" Brackets colors match
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM UX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable number lines
set number

" Shows the last command in bottom right
set showcmd

" Highlight current line
set cursorline

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Set no splits separator
set fillchars=""

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Keeps active line vertically centralized
set scrolloff=999


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vimnimum/undodir
    set undofile
catch
endtry

" Set to auto read when a file is changed from the outside
set autoread

" Ignore case in some commands
cab W w| cab Q q| cab Wq wq| cab wQ wq| cab WQ wq

" Using system's clipboard
set clipboard=unnamed,unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai " Auto indent
set si " Smart indent

" Word wrapping, but line breaks only when Enter is pressed
set wrap
set linebreak
set nolist

" No brackts match
let loaded_matchparen = 1 
