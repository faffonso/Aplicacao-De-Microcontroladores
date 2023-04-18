;Manipulação de dados em registradores e endereços de memória por meio de
;instruções lógicas e booleanas

org 00h

inicio:
    MOV A, #01110100b
    MOV B, #01010101b

    ANL A, B 
    RR A 
    RR A

    CPL A
    RL A
    RL A

    ORL A, B
    XRL B, A
    SWAP A

    jmp inicio
end