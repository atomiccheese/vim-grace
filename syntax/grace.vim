" Match language-specific keywords
syntax keyword graceImport import as
syntax keyword graceDialect dialect
syntax keyword graceTodos TODO FIXME NOTE
syntax keyword graceKeywords
    \ def var
    \ method
    \ is confidential manifest overrides public readable writeable
    \ object class trait
    \ inherit use alias exclude
    \ required override
    \ type
syntax keyword graceConditionalKeywords if else match
syntax keyword graceLabelKeywords case
syntax keyword graceLoopKeywords while for
syntax keyword graceExcKeywords try catch finally

syntax match graceNumber "\v<\d+>"
syntax match graceNumber "\v<\d+.\d+>"
syntax match graceNumber "\v<\d+e\(-|+\)?\d+>"
syntax match graceNumber "\v<\d+.\d+e\(-|+\)?\d+>"
syntax match graceNumber "\v<0x[0-9a-fA-F]+>"
syntax match graceNumber "\v<2x[01]+>"

syntax match graceBoolean true false
syntax match gracePredefConstant "\v\.\.\."

syntax match graceTypeIdent "\v[A-Z][A-Za-z0-9'_]*"
syntax match graceNormIdent "\v[a-z][A-Za-z0-9'_]*"

syntax match graceOperator "\v

syntax region graceString start=/"/ skip=/\\"/ end=/"/ oneline contains=graceInterpWrap
syntax region graceInterpWrap start="\v{\s*" end="\v\s*}" contained containedin=graceString

highlight default link graceTodos Todo
highlight default link graceImport Include
highlight default link graceDialect PreProc

highlight default link graceString String
highlight default link graceInterpWrap Delimiter
highlight default link graceNumber Number
highlight default link graceBoolean Boolean
highlight default link gracePredefConstant Constant

highlight default link graceTypeIdent Type
highlight default link graceNormIdent Identifier

highlight default link graceKeywords Keyword
highlight default link graceConditionalKeywords Conditional
highlight default link graceLabelKeywords Label
highlight default link graceLoopKeywords Repeat
highlight default link graceExcKeywords Exception

highlight default link graceOperator Operator
highlight default link graceAttributes Operator
highlight default link graceStructure Operator
highlight default link graceType Operator
highlight default link graceImports Operator
