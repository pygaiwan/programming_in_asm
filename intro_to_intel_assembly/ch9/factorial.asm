    segment .data
x               dq  0
scanf_format    db  "%ld", 0
printf_format   db  "fact(%ld) = %ld", 0x0a, 0

    segment .text
    global  main
    global  fact
    extern  scanf
    extern  printf

main:
    push    rbp
    mov     rbp, rsp
    lea     rdi, [scanf_format]  ; set arg 1 for scanf
    lea     rsi, [x]             ; set arg 2 for scanf

    xor     eax, eax            
    call    scanf
    mov     rdi, [x]             ; move x for fact call
    call    fact

    lea     rdi, [printf_format] ; set arg 1 for printf
    mov     rsi, [x]             ; set arg 2 for printf
    mov     rdx, rax             ; set arg 3 to be x!
    xor     eax, eax

    call    printf
    xor     eax, eax

    leave
    ret

fact:
n   equ     8
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    cmp     rdi, 1              ; compare argument with 1, base case
    jg      greater             ; if n <= 1 return 1
    mov     eax, 1
    leave
    ret

greater
    mov     [rsp+n], rdi        ; save n
    dec     rdi                 ; n - 1
    call    fact                ; call fact(n-1)
    mov     rdi, [rsp+n]        ; restore orginial n
    imul    rax, rdi            ; multiply fact(n-1) * n
    leave
    ret


