.global main

main:
	cmp $3, %rdi
	jne erro1

	add $8, %rsi
	dec %rdi
	
passou:
	push %rdi
	push %rsi
	sub $8, %rsp		# alinhar as pilhas de chamadas
	
	mov (%rsi), %rdi
	call puts
	
	add $8, %rsp		# restaurar o valor de %rsp pré-alinhado
	pop %rsi
	pop %rdi
	
	add $8, %rsi
	dec %rdi
	jnz passou
	
	jmp final
	
erro1:
	mov $saidaerro, %rdi
	call puts
	jmp final
	
final:
	ret 
	
saidaerro:
		.asciz "Requer obrigatoriamente 2 parâmetros."
