" Vim syntax file
" Language: DGFiP's M language
" Maintainer: Denis Merigoux
" Latest Revision: 21 November 2023

if exists("b:current_syntax")
  finish
endif

"syntax match variableBegin "[A-Za-z0-9_]*" nextgroup=variableMiddle
"syntax match variableMiddle "[A-Za-z_]" contained nextgroup=variableEnd
"syntax match variableEnd "[A-Za-z0-9_]*" contained

syntax match structKeywords '\<variable\s\+saisie\>'
syntax match structKeywords "\<variable\s\+calculee\>"
syntax match structKeywords '\<domaine\s\+regle\>'
syntax match structKeywords "\<domaine\s\+verif\>"
syntax keyword structKeywords regle verif cible

syntax match basicKeywords "\<calculer\s\+domaine\>"
syntax match basicKeywords "\<calculer\s\+enchaineur\>"
syntax match basicKeywords "\<calculer\s\+cible\>"
syntax match basicKeywords "\<verifier\s\+domaine\>"
syntax match basicKeywords ':'
syntax match basicKeywords '('
syntax match basicKeywords ')'
syntax match basicKeywords ','
syntax match basicKeywords ';'
syntax match basicKeywords "\<variable\s\+temporaire\>"
syntax keyword basicKeywords application enchaineur tableau attribut
syntax keyword basicKeywords specialise autorise par_defaut calculable verifiable
syntax keyword basicKeywords saisie calculee alias base restituee type fonction const sortie
syntax keyword basicKeywords erreur afficher_afficher_erreur leve_erreur nettoie_erreurs

syntax keyword controlKeywords si alors sinon finsi pour un iterer avec restaurer apres categorie
syntax match controlKeywords ':\s*variable'

"syntax match loopParameter '\<[a-z]\>'

syntax region strings start='"' end='"'

syntax match assignment '^\s*[A-Za-z0-9_]*[A-Za-z][A-Za-z0-9_]*\s*='
syntax match declaration '^\s*[A-Z0-9_]*[A-Z][A-Z0-9_]*\s*:'

syntax match numericConstant '\<[0-9]\+\(\.[0-9]\+\)\?\>'
syntax keyword numericConstant indefini

syntax keyword functions somme abs min max positif positif_ou_nul null arr inf supzero present
syntax keyword functions multimax modulo
syntax keyword functions nb_categorie nb_erreur numero_compl numero_verif taille

syntax match comments "\#.*$"
syntax region comments start='#{' end='}#'

syntax match operators '+'
syntax match operators '-'
syntax match operators '*'
syntax match operators '/'
syntax match operators '='
syntax match operators '!='
syntax match operators '>'
syntax match operators '<'
syntax match operators '>='
syntax match operators '<='
syntax match operators "et"
syntax match operators "ou"
syntax match operators "non"
syntax match operators "dans"

hi def link structKeywords Type
hi def link basicKeywords Keyword
hi def link controlKeywords Statement
hi def link operators Operator
hi def link functions Function
hi def link comments Comment
hi def link strings String
hi def link numericConstant Number
"hi def link loopParameter Character
"hi def link variableMiddle Character
"hi def link assignment Type
hi def link declaration Type

let b:current_syntax = "mdgfip"
