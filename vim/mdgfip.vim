" Vim syntax file
" Language: DGFiP's M language
" Maintainer: Denis Merigoux
" Latest Revision: 26 August 2019

if exists("b:current_syntax")
  finish
endif

syntax keyword basicKeywords regle application enchaineur
syntax keyword basicKeywords alias type calculee
syntax keyword basicKeywords saisie restituee fonction

syntax keyword controlKeywords si alors sinon finsi pour et ou

syntax match loopParameter '\<[a-z]\>'

syntax region strings start='"' end='"'

syntax match variableBegin "[A-Z_0-9]\+" nextgroup=variableMiddle
syntax match variableMiddle "[a-z]*" contained nextgroup=variableEnd
syntax match variableEnd "[A-Z_0-9]*" contained

syntax match assignment  '^\s*[A-Z_0-9]\+[a-z]*[A-Z_0-9]*\s*='
syntax match declaration  '^\s*[A-Z_0-9]\+[a-z]*[A-Z_0-9]*\s\:'

syntax match numericConstant '\<[0-9]\+\>'

syntax keyword functions arr inf positif positif_ou_nul present
syntax keyword functions multimax null max min somme modulo

syntax match comments "\#.*$"


syntax match operators '*'
syntax match operators '+'
syntax match operators '/'
syntax match operators '-'
syntax match operators '>'
syntax match operators '>='
syntax match operators '<'
syntax match operators '<='
syntax match operators '=='
syntax match operators '!='
syntax match operators 'X'
syntax match operators ';'

hi def link basicKeywords Keyword
hi def link controlKeywords Statement
hi def link operators Operator
hi def link functions Function
hi def link comments Comment
hi def link strings String
hi def link numericConstant Number
hi def link loopParameter Character
hi def link variableMiddle Character
hi def link assignment Type
hi def link declaration Type

let b:current_syntax = "mdgfip"
