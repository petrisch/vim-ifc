" Vim syntax file
" Language:	IFC
" Maintainer:	Bruno Postle
" Update:	05 Jan 2014
" Changes:
"
syntax case ignore

syn match ifcKeyword '[a-z_0-9]\+'

syn match ifcGID '#[0-9]\+'
syn match ifcEnum '\.[a-zA-Z0-9_]\+\.'
syn match ifcEnum '\$'
syn match ifcEnum '\*'
syn region ifcString start=+'+ end=+'+

" Regular int like number with - + or nothing in front
syn match ifcNumber '\d\+' contained display
syn match ifcNumber '[-+]\d\+' contained display

" Floating point number with decimal no E or e (+,-)
syn match ifcNumber '\d\+\.\d*' contained display
syn match ifcNumber '[-+]\d\+\.\d*' contained display

" Floating point like number with E and no decimal point (+,-)
syn match ifcNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained display
syn match ifcNumber '\d[[:digit:]]*[eE][\-+]\=\d\+' contained display

" Floating point like number with E and decimal point (+,-)
syn match ifcNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display
syn match ifcNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display

syn region ifcBracket start='(' end=')' fold transparent contains=ifcNumber,ifcString,ifcEnum,ifcGID

hi def link ifcNumber  Special
hi def link ifcKeyword Statement
hi def link ifcString  String
hi def link ifcGID     Comment
hi def link ifcEnum    Type

let b:current_syntax = "ifc"

" vim: ts=8
