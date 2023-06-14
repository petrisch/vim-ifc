" indent/ifc.vim
" Placeholder
" setlocal indentexpr=IFCIndent()

" function! IFCIndent()
"   let line = getline(v:lnum)
"   let previousNum = prevnonblank(v:lnum - 1)
"   let previous = getline(previousNum)

"   if previous =~ "{" && previous !~ "}" && line !~ "}" && line !~ ":$"
"     return indent(previousNum) + &tabstop
"   endif

" endfunction
