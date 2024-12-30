    section .data
a   db      0x70            ; 1-byte int
b   dw      0x7000          ; 2-byte int
c   dd      0x7000000       ; 3-byte int
d   dq      0x7000000000000 ; 4-byte int


    section .text
    global  main

main:
    mov     rax, [a]
    add     rax, [b]
    add     rax, [c]
    add     rax, [d]

    xor     rax, rax
    ret
