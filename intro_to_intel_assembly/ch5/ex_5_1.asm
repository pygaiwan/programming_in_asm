    section .data
a   dq      10
b   dq      -20
c   dq      -4
d   dq      0x00006

    section .text
    global  main

main:
    mov     rax, [a]
    add     rax, [b]
    add     rax, [c]
    add     rax, [d]

    xor     rax, rax
    ret

