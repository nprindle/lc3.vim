" Vim syntax file
" Language: LC-3 assembly
" Author: Zacharie Day <day@gwu.edu>
" Remarks: Vim 6 or greater

if exists("b:current_syntax")
    finish
endif

syn case ignore

" Match regexes.
syn match lc3Label     /[A-Za-z0-9_]\+\w/
syn match lc3Register  /[rR][0-7]/
syn match lc3Directive /\.[A-Za-z]\+/
syn match lc3Decimal   /#\=-\=\<[0-9]\+\>/
syn match lc3Hex       /x-\=[A-Fa-f0-9]\+/
syn match lc3Binary    /b-\=[01]\+/
syn region lc3String   start=+"+ skip=+\\"+ end=+"+
syn region lc3Comment  start=+;+ end=+$+

" LC-3 opcodes, minus branches
syn keyword lc3Opcode add ld st jsrr jsr and ldr str rti not ldi sti jmp ret lea trap
" Branches
syn keyword lc3Opcode br brn brz brp brnz brnp brzp brnzp
" Trap subroutines
syn keyword lc3Opcode getc out puts in putsp halt
" LC-3b opcodes
syn keyword lc3Opcode ldb ldw lshf rshfl rshfa stb stw xor

" Link colors.
hi def link lc3Opcode    Statement
hi def link lc3Label     Identifier
hi def link lc3Register  Type
hi def link lc3Directive Define
hi def link lc3Decimal   Number
hi def link lc3Hex       Number
hi def link lc3Binary    Number
hi def link lc3String    String
hi def link lc3Comment   Comment

let b:current_syntax = "lc3"
