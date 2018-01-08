section .data
message db 'Hello, World', 0x0a
length  equ $ -message
section .text
global  _start

_start:
mov     rcx, message
mov     rdx, length
mov     rax, 4
mov     rbx, 1
int     0x80
mov     rax, 1
mov     rbx, 0
int     0x80

