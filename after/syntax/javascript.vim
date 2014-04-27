"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim syntax file
"
" Language: JS-SQL (JavaScript)
" Maintainer: Lalit Kapoor <lalitkapoor@gmail.com>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

syn include @sqlSyntax syntax/sql.vim
syn region sqlRegion start=+<sql>+ end=+</sql>+ keepend extend contains=@sqlSyntax,jsInXML
syn cluster jsExpression add=sqlRegion

" From vim-jsx
syn region jsInXML contained start=+{+ end=++ contains=jsBlock
