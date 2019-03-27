"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set 2 tabspaces (identation) for html files
autocmd BufNewFile,BufRead *.jinja2,*.j2,*.jinja,*.nunjucks,*.nunjs,*.njk set ft=jinja
autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja

autocmd Filetype html set ts=2 sts=2 sw=2 tw=0 expandtab
autocmd Filetype htmldjango set ts=2 sts=2 sw=2 tw=0 expandtab
autocmd Filetype jinja set ts=2 sts=2 sw=2 tw=0 expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YAML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set 2 tabspaces (identation) for yaml files
autocmd BufNewFile,BufRead *.yaml,*.yml set ft=yaml
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => JS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set 2 tabspaces (identation) for js files
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 tw=0 expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set textwidth for Markdown files
autocmd BufNewFile,BufRead *.md,*.markdown set filetype=markdown
autocmd BufNewFile,BufRead *.md,*.markdown set syntax=markdown
autocmd BufNewFile,BufRead *.md,*.markdown set tw=72 spell spelllang=en_us


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickly add ipdb.set_trace() by typing PDB or IPDB
iab IPDB import ipdb; ipdb.set_trace()
iab PDB import pdb; pdb.set_trace()

let g:pep8_text_width = 100
let g:pep8_comment_text_width = 100
let g:syntastic_python_flake8_args="--ignore=E203,E266,E501,W503,W504"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SCSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.scss set tw=0 filetype=scss.css


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype css setlocal ts=2 sts=2 sw=2 tw=0 expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git commit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype gitcommit setlocal tw=72 spell spelllang=en_us
