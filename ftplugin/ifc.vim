" ftplugin/ifc.vim
" Sets the comment string to be REM
setlocal comments=s0:/*!,m:\ ,ex:*/,s1:/*,mb:*,ex:*/,:///,://!,://
setlocal commentstring=//%s
" Makes these a non word character
setlocal iskeyword+=$-$,%-%,#,@-@
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal completefunc=syntaxcomplete#Complete
