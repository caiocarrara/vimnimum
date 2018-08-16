"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set 2 tabspaces (identation) for html files
autocmd BufNewFile,BufRead *.jinja2,*.j2,*.jinja,*.nunjucks,*.nunjs,*.njk set ft=jinja
autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja

autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype jinja setlocal ts=2 sts=2 sw=2 expandtab



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => JS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set 2 tabspaces (identation) for js files
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set textwidth for Markdown files
autocmd Filetype markdown set tw=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickly add ipdb.set_trace() by typing PDB or IPDB
iab IPDB import ipdb; ipdb.set_trace()
iab PDB import pdb; pdb.set_trace()

let g:pep8_text_width = 120
let g:pep8_comment_text_width = 120
let g:syntastic_python_flake8_args="--ignore=E501"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SCSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.scss set filetype=scss.css


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git commit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype gitcommit setlocal tw=72
