; Manipulação de dados em registradores e endereços de memória por meio de
;instruções de transferência de dados

org 00h ; origem em 00h

inicio:
    mov ACC, #01h       ; move o valor 01h para o acumulador - dura��o: 2 �s (2 ciclos)
    mov ACC, #00h       ; move o valor 0 para 	ACC -dura��o: 2 �s (2 ciclos)

    mov R0,#02h         ; move o valor 02h para o registrador R0 - dura��o: 1�s (1 ciclo)
    mov B, #03h         ; move o valor 03h para o registrador B - dura��o: 2 �s (2 ciclos)
    mov 21h, P1         ; move a porta P1 para a posi��o 21h da RAM - dura��o: 2 �s (2 ciclos)
    
    mov PSW, #00001000b ; selecionar o banco 1 de registradores - dura��o: 2 �s (2 ciclos)
    mov R7, 21h         ; move o valor do endere�o 21h para o registrador R7 - dura��o: 2 �s (2 ciclos)
    mov 08h, R7         ; move o valor de R7 para o endere�o 08h - dura��o: 2 �s (2 ciclos)
    mov R1, #08h        ; o registrador R1 aponta de forma imediata para o endere�o 08h - dura��o: 1 �s (1 ciclo)
    
    mov ACC, @R1        ; move R1 de forma indireta para  o acumulador - dura��o: 2 �s (2 ciclos)
    mov DPTR, #9A5Bh    ; move de forma imediata o valor para DPTR - dura��o: 2 �s (2 ciclos)
    
    nop                 ; consome 1 us sem nenhuma opera��o - dura��o: 1 �s (1 ciclo)
    jmp $               ; segura o programa nessa linha - dura��o: 2 �s (2 ciclos)

end ; encerra o programa