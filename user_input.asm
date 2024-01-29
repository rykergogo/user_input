; Author: CodeASM
; Date: 1/28/2024
; Description: Capture user input and print to screen
; Syntax: Intel
; x86_64


section .data
        question db "How old are you? "
        greeting db "Hello! Age: "

section .bss
        age resb 4

section .text
        global _start
_start:

        call _printQuestion
        call _getAge
        call _printAge
        call _displayAge

        mov rax, 60
        mov rdi, 0
        syscall

_getAge:

        mov rax, 0
        mov rdi, 0
        mov rsi, age
        mov rdx, 4
        syscall
        ret

_printQuestion:

        mov rax, 1
        mov rdi, 1
        mov rsi, question
        mov rdx, 17
        syscall
        ret

_printAge:

        mov rax, 1
        mov rdi, 1
        mov rsi, greeting
        mov rdx, 12
        syscall
        ret

_displayAge:

        mov rax, 1
        mov rdi, 1
        mov rsi, age
        mov rdx, 4
        syscall
        ret
