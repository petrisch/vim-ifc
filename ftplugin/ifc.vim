" ftplugin/ifc.vim
" Sets the comment string to be REM
setlocal comments& comments^=s0:*\ -,m0:*\ \ ,ex0:*/%s */
setlocal commentstring=//%s
" Makes these a non word character
setlocal iskeyword+=$-$,%-%,#,@-@
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal completefunc=syntaxcomplete#Complete
