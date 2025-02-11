" Vim syntax file
" Language: DGFiP's M language
" Maintainer: Denis Merigoux
" Latest Revision: 21 November 2023

if exists("b:current_syntax")
  finish
endif

syntax match variable "\<[A-Za-z0-9_]*[A-Za-z_][A-Za-z0-9_]*\>"

syntax match structKeywords '\<variable\s\+saisie\>'
syntax match structKeywords "\<variable\s\+calculee\>"
syntax match structKeywords '\<domaine\s\+regle\>'
syntax match structKeywords "\<domaine\s\+verif\>"
syntax keyword structKeywords fonction regle verif cible

syntax match aliasKw 'alias' contains=basicKeywords
syntax keyword basicKeywords alias contained

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
syntax keyword basicKeywords application enchaineur tableau specialise
syntax keyword basicKeywords autorise par_defaut calculable verifiable saisie
syntax keyword basicKeywords calculee base restituee type const arguments
syntax keyword basicKeywords variables_temporaires arguments resultat sortie
syntax keyword basicKeywords condition erreur afficher afficher_erreur
syntax keyword basicKeywords leve_erreur nettoie_erreurs finalise_erreurs
syntax keyword basicKeywords exporte_erreurs quand faire puis_quand sinon_faire
syntax keyword basicKeywords finquand neant increment variables evenements
syntax keyword basicKeywords evenement ajouter reference

syntax keyword controlKeywords si alors sinon_si sinon finsi
syntax keyword controlKeywords pour un iterer avec restaurer apres categorie
syntax keyword controlKeywords arranger_evenements trier filtrer
syntax match controlKeywords ':\s*variable'

"syntax match loopParameter '\<[a-z]\>'

syntax region strings start='"' end='"'

syntax match assignment '^\s*[A-Za-z0-9_]*[A-Za-z][A-Za-z0-9_]*\s*='
syntax match declaration '^\s*[A-Z0-9_]*[A-Z][A-Z0-9_]*\s*:'

syntax match numericConstant '\<[0-9]\+\(\.[0-9]\+\)\?\>'
syntax keyword numericConstant indefini

syntax keyword functions somme abs min max positif positif_ou_nul null arr inf
syntax keyword functions supzero present multimax modulo nb_anomalies
syntax keyword functions nb_discordances nb_informatives nb_bloquantes
syntax keyword functions nb_categorie numero_compl numero_verif taille
syntax keyword functions indenter nom nb_evenements champ_evenement attribut

syntax match funArgs "[a-z]\+([^)]*)" contains=functions
syntax keyword functions alias contained

syntax match comments "\#.*$"
syntax region comments start='#{' end='}#'

syntax match operators '+'
syntax match operators '-'
syntax match operators '*'
syntax match operators '/'
syntax match operators '%'
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
hi def link functions2 Function
hi def link comments Comment
hi def link strings String
hi def link numericConstant Number
"hi def link loopParameter Character
"hi def link variable Character
"hi def link assignment Type
hi def link declaration Type

let b:current_syntax = "mdgfip"
