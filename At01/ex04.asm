;Manipulação de dados em registradores e endereços de memória por meio de
;instruções de desvio incondicional e condicional:

org 00h

jmp main 

org 33h

main:
    mov A, #00h
    mov R0, #04h

    bloco1:
        jz bloco2
        jnz bloco3
        nop

bloco2:
    mov A, R0
    jmp bloco1

bloco3:
    dec A
    jnz bloco3
    jmp main