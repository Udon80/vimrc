ShowStrangeSpaceCharacters

" Hilight identifiers that begin with Upper case characters
syntax match dTypeAft /\<[A-Z][0-9A-Za-z_]*\>/ containedin=paramlist
command! NoShowDFunctionDefinition hi dTypeAft NONE
command!   ShowDFunctionDefinition hi dTypeAft guifg=#80b080
ShowDFunctionDefinition

" Hilight function name in function definition
syntax match dFunctionDefinitionAft /\%(\<[A-Za-z_][0-9A-Za-z_]*\>.*\%(!(.*)\)\? \)\@<=\<[A-Za-z_][0-9A-Za-z_]*\>\%((.*) \?[a-zA-Z/]* \?{\)\@=/
hi dFunctionDefinitionAft guifg=#a898b0

" Hilight std.???
syntax match dSTDModule /std\.[a-zA-Z_][a-zA-Z0-9_]*/ containedin=paramlist,dImport
hi dSTDModule guifg=#45bdb8

" Syntax based folding
setlocal foldmethod=syntax
