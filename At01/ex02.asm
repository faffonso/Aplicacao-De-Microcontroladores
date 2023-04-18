;Manipulação de dados em registradores e endereços de memória por meio de
;instruções aritméticas:
 
 org 00h ; origem em 00h

inicio:
	mov A, #02h 	; move o valor 2 para A - dura��o: 1 �s (1 ciclo)  
	mov B, #03h 	; move o valor 3 para B - dura��o: 1 �s (1 ciclo)
	mov 20h, #07h	; move o valor 7 para o endere�o 20h - dura��o: 2 �s (2 ciclo)

	add A, 20h 		; soma o valor do endere�o 20h com A - - dura��o: 2 �s (2 ciclo)
	subb A, #03h 	; decrementa 3 de A - - dura��o: 1 �s (1 ciclo)
	
	inc B			; incrementa B em 1 - dura��o: 1 �s (1 ciclo) 
	subb A, B 		; Subtrai A por B - dura��o: 1 �s (1 ciclo)
	
	mul AB 			; Multiplica A e B - dura��o: 4 �s (4 ciclo)
	inc B 			; incrementa B - dura��o: 1 �s (1 ciclo)
	inc B 			; incrementa B - dura��o: 1 �s (1 ciclo)
	
	div AB 			; divide A por B - dura��o: 4 �s (4 ciclo)
	mov 21h, A 		; armazena o valor de A no ender�o 21h - dura��o: 2 �s (2 ciclo)
	mov 22h, B 		; armazena o valor de B no endere�o 22h - dura��o: 2 �s (2 ciclo)

	jmp inicio 		; saltar para a label do come�o - dura��o: 2 �s (2 ciclo)

end	; encerra o programa